Citizen.CreateThread(function()
    while true do
        for ped in EnumeratePeds() do
            local ra = RGBRainbow(1.0)
            local cx, cy, cz = table.unpack(GetEntityCoords(PlayerPedId()))
            local x, y, z = table.unpack(GetEntityCoords(ped))

            LineOneBegin = GetOffsetFromEntityInWorldCoords(ped, -0.3, -0.3, -0.9)
            LineOneEnd = GetOffsetFromEntityInWorldCoords(ped, 0.3, -0.3, -0.9)
            LineTwoBegin = GetOffsetFromEntityInWorldCoords(ped, 0.3, -0.3, -0.9)
            LineTwoEnd = GetOffsetFromEntityInWorldCoords(ped, 0.3, 0.3, -0.9)
            LineThreeBegin = GetOffsetFromEntityInWorldCoords(ped, 0.3, 0.3, -0.9)
            LineThreeEnd = GetOffsetFromEntityInWorldCoords(ped, -0.3, 0.3, -0.9)
            LineFourBegin = GetOffsetFromEntityInWorldCoords(ped, -0.3, -0.3, -0.9)

            TLineOneBegin = GetOffsetFromEntityInWorldCoords(ped, -0.3, -0.3, 0.8)
            TLineOneEnd = GetOffsetFromEntityInWorldCoords(ped, 0.3, -0.3, 0.8)
            TLineTwoBegin = GetOffsetFromEntityInWorldCoords(ped, 0.3, -0.3, 0.8)
            TLineTwoEnd = GetOffsetFromEntityInWorldCoords(ped, 0.3, 0.3, 0.8)
            TLineThreeBegin = GetOffsetFromEntityInWorldCoords(ped, 0.3, 0.3, 0.8)
            TLineThreeEnd = GetOffsetFromEntityInWorldCoords(ped, -0.3, 0.3, 0.8)
            TLineFourBegin = GetOffsetFromEntityInWorldCoords(ped, -0.3, -0.3, 0.8)

            ConnectorOneBegin = GetOffsetFromEntityInWorldCoords(ped, -0.3, 0.3, 0.8)
            ConnectorOneEnd = GetOffsetFromEntityInWorldCoords(ped, -0.3, 0.3, -0.9)
            ConnectorTwoBegin = GetOffsetFromEntityInWorldCoords(ped, 0.3, 0.3, 0.8)
            ConnectorTwoEnd = GetOffsetFromEntityInWorldCoords(ped, 0.3, 0.3, -0.9)
            ConnectorThreeBegin = GetOffsetFromEntityInWorldCoords(ped, -0.3, -0.3, 0.8)
            ConnectorThreeEnd = GetOffsetFromEntityInWorldCoords(ped, -0.3, -0.3, -0.9)
            ConnectorFourBegin = GetOffsetFromEntityInWorldCoords(ped, 0.3, -0.3, 0.8)
            ConnectorFourEnd = GetOffsetFromEntityInWorldCoords(ped, 0.3, -0.3, -0.9)

            DrawLine(LineOneBegin.x, LineOneBegin.y, LineOneBegin.z, LineOneEnd.x, LineOneEnd.y, LineOneEnd.z, ra.r, ra.g, ra.b, 255)
            DrawLine(LineTwoBegin.x, LineTwoBegin.y, LineTwoBegin.z, LineTwoEnd.x, LineTwoEnd.y, LineTwoEnd.z, ra.r, ra.g, ra.b, 255)
            DrawLine(LineThreeBegin.x, LineThreeBegin.y, LineThreeBegin.z, LineThreeEnd.x, LineThreeEnd.y, LineThreeEnd.z, ra.r, ra.g, ra.b, 255)
            DrawLine(LineThreeEnd.x, LineThreeEnd.y, LineThreeEnd.z, LineFourBegin.x, LineFourBegin.y, LineFourBegin.z, ra.r, ra.g, ra.b, 255)
            DrawLine(TLineOneBegin.x, TLineOneBegin.y, TLineOneBegin.z, TLineOneEnd.x, TLineOneEnd.y, TLineOneEnd.z, ra.r, ra.g, ra.b, 255)
            DrawLine(TLineTwoBegin.x, TLineTwoBegin.y, TLineTwoBegin.z, TLineTwoEnd.x, TLineTwoEnd.y, TLineTwoEnd.z, ra.r, ra.g, ra.b, 255)
            DrawLine(TLineThreeBegin.x, TLineThreeBegin.y, TLineThreeBegin.z, TLineThreeEnd.x, TLineThreeEnd.y, TLineThreeEnd.z, ra.r, ra.g, ra.b, 255)
            DrawLine(TLineThreeEnd.x, TLineThreeEnd.y, TLineThreeEnd.z, TLineFourBegin.x, TLineFourBegin.y, TLineFourBegin.z, ra.r, ra.g, ra.b, 255)
            DrawLine(ConnectorOneBegin.x, ConnectorOneBegin.y, ConnectorOneBegin.z, ConnectorOneEnd.x, ConnectorOneEnd.y, ConnectorOneEnd.z, ra.r, ra.g, ra.b, 255)
            DrawLine(ConnectorTwoBegin.x, ConnectorTwoBegin.y, ConnectorTwoBegin.z, ConnectorTwoEnd.x, ConnectorTwoEnd.y, ConnectorTwoEnd.z, ra.r, ra.g, ra.b, 255)
            DrawLine(ConnectorThreeBegin.x, ConnectorThreeBegin.y, ConnectorThreeBegin.z, ConnectorThreeEnd.x, ConnectorThreeEnd.y, ConnectorThreeEnd.z, ra.r, ra.g, ra.b, 255)
            DrawLine(ConnectorFourBegin.x, ConnectorFourBegin.y, ConnectorFourBegin.z, ConnectorFourEnd.x, ConnectorFourEnd.y, ConnectorFourEnd.z, ra.r, ra.g, ra.b, 255)

            DrawLine(cx, cy, cz, x, y, z, ra.r, ra.g, ra.b, 255)
        end
        Citizen.Wait(0)
    end
end)