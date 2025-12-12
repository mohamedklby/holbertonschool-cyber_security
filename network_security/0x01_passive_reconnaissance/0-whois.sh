#!/bin/bash
whois $1 | awk 'BEGIN{g[1]="Registrant";g[2]="Admin";g[3]="Tech";L[1]="Name";L[2]="Organization";L[3]="Street";L[4]="City";L[5]="State/Province";L[6]="Postal Code";L[7]="Country";L[8]="Phone";L[9]="Phone Ext:";L[10]="Fax";L[11]="Fax Ext:";L[12]="Email"}{if(match($0,/^(Registrant|Admin|Tech)[ \t]+(.+?):[ \t]?(.*)$/,a)){grp=a[1];fld=a[2];val=a[3];sub(/[ \t\r\n]+$/,"",val); if(fld=="Street") val=val" ";data[grp SUBSEP fld]=val}}END{for(i=1;i<=3;i++){grp=g[i];for(j=1;j<=12;j++){lab=L[j];k=lab; sub(/:$/,"",k);v=data[grp SUBSEP k]; if(v=="") v=""; print grp" "lab","v}}}' > $1.csv

