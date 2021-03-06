#Region Public

Function RuntimeError(Message = "") Export
    
    Return "[RuntimeError]" + Chars.LF + Message;
    
EndFunction

Function TypeError(Message = "") Export
    
    Return "[TypeError]" + Chars.LF + Message;
    
EndFunction

Function AssertError(Expected, Actual, Message = "") Export
    
    ErrorText = StrTemplate(
        "[AssertError]
        |[Expected]
        |%1
        |[Actual]
        |%2",
        Expected,
        Actual
    );
    
    If Not IsBlankString(Message) Then
        ErrorText = ErrorText + Chars.LF + "[Message]" + Chars.LF + Message;
    EndIf;
    
    Return ErrorText;
    
EndFunction

Function NotImplementedError(Message = "") Export 
    
    Return "[NotImplementedError]" + Chars.LF + Message;
    
EndFunction

#EndRegion
