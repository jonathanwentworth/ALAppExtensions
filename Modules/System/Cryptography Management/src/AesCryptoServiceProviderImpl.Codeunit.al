codeunit 1467 "AesCryptoServiceProvider Impl." implements SymmetricAlgorithm
{
    Access = Internal;

    var
        DotNetAesCryptoServiceProvider: Dotnet "Cryptography.AesCryptoServiceProvider";
        XmlEncrypmentMethodUrlTok: Label 'http://www.w3.org/2001/04/xmlenc#aes256-cbc', Locked = true;

    [NonDebuggable]
    procedure GetInstance(var DotNetSymmetricAlgorithm: DotNet "Cryptography.SymmetricAlgorithm")
    begin
        AesCryptoServiceProvider();
        DotNetSymmetricAlgorithm := DotNetAesCryptoServiceProvider;
    end;

    procedure XmlEncrypmentMethodUrl(): Text
    begin
        exit(XmlEncrypmentMethodUrlTok);
    end;

    local procedure AesCryptoServiceProvider()
    begin
        DotNetAesCryptoServiceProvider := DotNetAesCryptoServiceProvider.AesCryptoServiceProvider();
    end;
}