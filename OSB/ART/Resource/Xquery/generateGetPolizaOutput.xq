(:: pragma bea:global-element-return element="ns0:PolizaResponse" location="../Schemas/Poliza.xsd" ::)

declare namespace ns1 = "http://www.globallogic.com.ar/diccionario";
declare namespace ns0 = "http://www.globallogic.com.ar/poliza";
declare namespace xf = "http://tempuri.org/PruebaEjemplo/Resources/Xquery/generateGetPolizaOutput/";

declare function xf:generateGetPolizaOutput($idPoliza as xs:int)
    as element(ns0:PolizaResponse) {
        <ns0:PolizaResponse>
            <ns1:fechaContrato>15</ns1:fechaContrato>
            <ns1:fechaInicioValidez>2012/12/12</ns1:fechaInicioValidez>
            <ns1:fechaFinValidez>12/7/12</ns1:fechaFinValidez>
            <ns1:prima>123</ns1:prima>
            <ns1:premio>23</ns1:premio>
            <ns1:comision>123</ns1:comision>
            <ns1:idPoliza>1</ns1:idPoliza>
            <ns1:idProductor>
                <idProductor>1</idProductor>
                <idPersona>
                    <idPersona>1</idPersona>
                    <tipoDoc>dni</tipoDoc>
                    <nroDoc>12312313</nroDoc>
                    <nombre>asdfadsf</nombre>
                    <apellido>adfasdf</apellido>
                    <email>adsfadsfas@gmail.com</email>
                    <fechaNacimiento>23/12/1232</fechaNacimiento>
                </idPersona>
            </ns1:idProductor>
            <ns1:idZonaCobertura>
                <idZonaCobertura>1</idZonaCobertura>
                <nombre>caba</nombre>
            </ns1:idZonaCobertura>
            <ns1:idEmpresaPoliza>
                <idEmpresa>1</idEmpresa>
                <cuit>23123123</cuit>
                <razonSocial>adsfdasfasdf</razonSocial>
                <idDireccion>
                    <idDireccion>1</idDireccion>
                    <calle>adsfasdfa</calle>
                    <numero>123</numero>
                    <piso>1</piso>
                    <idLocalidad>
                        <idLocalidad>1</idLocalidad>
                        <nombre>dskfjdasf</nombre>
                        <codigoPostal>1231</codigoPostal>
                        <idProvincia>
                            <idProvincia>1</idProvincia>
                            <nombre>n</nombre>
                            <idPais>
                                <idPais>1</idPais>
                                <nombre>2</nombre>
                            </idPais>
                        </idProvincia>
                    </idLocalidad>
                </idDireccion>
                <idRubro>
                    <idRubro>1</idRubro>
                    <nombre>asdf</nombre>
                </idRubro>
            </ns1:idEmpresaPoliza>
            <ns1:idPlan>
                <idPlan>1</idPlan>
                <nombre>sdfsd</nombre>
                <descripcion>dsafasdfa</descripcion>
            </ns1:idPlan>
        </ns0:PolizaResponse>
};

declare variable $idPoliza as xs:int external;

xf:generateGetPolizaOutput($idPoliza)
