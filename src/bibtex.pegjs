// BibTex Grammar

Citations
  = c:(Citation _ )*
  {
    var outputObj = {};
    for (let citation of c)
    {
      var label = citation[0][0];
      var data = citation[0][1];
      Object.assign(outputObj, {[label]: data});
    }
    return outputObj;
  }

Citation
  = [\@]CitationType _ Separator _ cn:CitationName _ "," _ ct:CitationAttribute* _ Separator 
  {
    var data = {};
    for (let citationAttr of ct)
    {
      Object.assign(data, {[citationAttr[0]]: citationAttr[1]});
    }
    return [cn, data];
  }
  
CitationType
  = $([a-z]i+)
  
Separator
  = '{' 
  / '}'
  
CitationName
  = n:$([a-z:\.0-9]i)+
  
// Inner body of citation

CitationAttribute
  = Title / Publisher / Url / Year / Authors / UnknownAttribute
  
AttributeName
  = $([a-z]i+)
  
AttributeData
  = $([a-z:\'/,\-\(\). 0-9]i)+

UnknownAttribute
  = n:AttributeName _ '=' _ Separator _ title:AttributeData _ Separator ','? _
  { return [n.trim(), title.trim()]; }

Title
  = 'title'i _ '=' _ Separator _ title:$([a-z:\. 0-9]i)+ _ Separator ','? _
  { return ['title', title.trim()]; }

Publisher
  = 'publisher'i _ '=' _ Separator _ pub:$([a-z:\. 0-9]i)+ _ Separator ','? _
  { return ['publisher', pub.trim()]; }

Url
  = 'url'i _ '=' _ Separator _ link:$([a-z:\.\/ 0-9]i)+ _ Separator ','? _
  { return ['link', [{url: link.trim()}]]; }

Year
  = 'year'i _ '=' _ Separator _ year:$([0-9]i)+ _ Separator ','? _
  { return ['year', parseInt(year.trim())]; }

Authors
  = 'author'i _ "=" _ Separator _ a:Author+
  {
  	return ['author', a[0]];
  }

// Author with lastname, first
LastNameAuthor
  = nameTokenList:($[a-z,.]i+ _ )+ ('and' / Separator ','?) _ 
  {
    var nameList = [];
    var curName = '';
    var lastName = '';
    var lastActive = false;
    for( let nameToken of nameTokenList )
    {      
      // Token Logic
      if( nameToken[0].substr(nameToken[0].length - 1, 1) == ',')
      {
        lastName = nameToken[0].substr(0, nameToken[0].length - 1);
      }
      else if( nameToken[0] === 'and' || nameToken == nameTokenList[nameTokenList.length - 1])
      {
        var firstNamePart = nameToken[0] !== 'and' ? nameToken[0] + ' ' : '';
     	curName += firstNamePart + lastName;
        nameList.push({name: curName});
        lastName = '';
        curName = '';
        lastActive = false;
      }
      else
      {
        curName += nameToken[0] + ' ';
      }
    }
    return nameList;
  }

// Author with firstname last
FirstNameAuthor
  = $[a-z .]i+ _ 'and' _


Author
  = ln:LastNameAuthor
  / fn:FirstNameAuthor

_ "whitespace"
  = [ \t\n\r]*
