Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DED5F2A766D
	for <lists+linux1394-devel@lfdr.de>; Thu,  5 Nov 2020 05:31:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Reply-To:From:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	MIME-Version:Subject:To:Sender:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=e/g2NWIke7FRXTssBDQR73cP9oSIODZ6eZy7wyTMuSU=; b=NUL71TNtlZ7PvU3STyht9rMjtC
	D9qHuZrMyGbXSj0CDXE/iKRaw8RSY8WryMw3STyu4ItRGc8Ddh4JQFFwXDJh8YGFdVwnv3Ng8RM1E
	4VkHx+iggIxFA/Ei00tAsefJWhUWE4LzAQ7DyQBa+aTIqlp9UgoeSHPBp030OPKFIscY=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1kaWw3-00040O-KY; Thu, 05 Nov 2020 04:31:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <www-data@alvesbatista3298913.pserver.ru>)
 id 1kaWw2-0003zb-Tt
 for linux1394-devel@lists.sourceforge.net; Thu, 05 Nov 2020 04:31:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Date:Message-Id:From:Content-type:MIME-Version:
 Subject:To:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mWfdMHmDZJ/xk1a7aXdoviheo0aSVMNHE14Wq0m8UTE=; b=So+bboIHKFlILGkGIHqI+JwEWU
 vT99Roc1rei9mf7uK+2T7gxwxyxX21BzlL59PA0n3XlQAMSRkRMoCYg/dVzJEYJSKR5smezYsbsCj
 TeT+dLmRt1Pijnadzz8ADFJo1lU+Lj01b29w4cGtrs5hRnThoHoR7ncLh61GmlDWiwMk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Date:Message-Id:From:Content-type:MIME-Version:Subject:To:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=mWfdMHmDZJ/xk1a7aXdoviheo0aSVMNHE14Wq0m8UTE=; b=C
 Ea1sxO3er9hWHECIj/7WlfGrJycPKXEzoSHqF3EPseVTli7RA1B5sJJDX5FfTT/O8Nd71Q2UG/n51
 bqBHa54bXDcZ38a2gCYV7+f6o89NyAfwkB9OGrGgMwrfXyS1vtYY7OLHnepo/RnkmqOydsYP8hslL
 i9tsznhke2Mg6Png=;
Received: from alvesbatista3298913.pserver.ru ([195.123.237.118])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1kaWvy-00A0GB-6O
 for linux1394-devel@lists.sourceforge.net; Thu, 05 Nov 2020 04:31:42 +0000
Received: by alvesbatista3298913.pserver.ru (Postfix, from userid 33)
 id 1C3442BC43; Thu,  5 Nov 2020 07:27:35 +0300 (+03)
To: linux1394-devel@lists.sourceforge.net
Subject: Envio de Burofax Online - Segunda Advertencia - [ id 249477656  ]
MIME-Version: 1.0
Message-Id: <20201105042735.1C3442BC43@alvesbatista3298913.pserver.ru>
Date: Thu,  5 Nov 2020 07:27:35 +0300 (+03)
X-Spam-Score: 4.8 (++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: azure.com]
 1.3 RCVD_IN_RP_RNBL        RBL: Relay in RNBL,
 https://senderscore.org/blacklistlookup/
 [195.123.237.118 listed in bl.score.senderscore.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 2.3 MIME_HTML_ONLY         BODY: Message only has text/html MIME parts
X-Headers-End: 1kaWvy-00A0GB-6O
X-BeenThere: linux1394-devel@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux IEEE 1394 development list
 <linux1394-devel.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=linux1394-devel>
List-Post: <mailto:linux1394-devel@lists.sourceforge.net>
List-Help: <mailto:linux1394-devel-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=subscribe>
From: "notificados.com via linux1394-devel"
 <linux1394-devel@lists.sourceforge.net>
Reply-To: "notificados.com" <notificados@notificados.com>
Content-Type: multipart/mixed; boundary="===============2941915994343041309=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============2941915994343041309==
Content-type: text/html; charset=iso-8859-1

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<style>
    .centro{
        margin: 0 auto;
        height: 50px;
        width: 650px;
       
    }

    .banner{
      
        height: 50px;
    }

    .letf{
        font-size: 30px;
        font-weight: 100;
        margin-left: 40px;
        float: left;
    }
  .pequena{
      font-size: 15px;
  }

  .banner2{
      float:right;
      margin-top: 30px;;
      
  }

  .dep{
    float:right;
    text-align: right;
  }

.imagem{
   
    font-size: 15px;

}

.imagem2{
    margin-left: 55%;
 
   
}
 
 .imagem2 .nomes{
    font-size: 15px;
    float: left;
 }

 .buro{
     font-size: 15px;
     margin-top: 30%;
     text-align: center;
     text-decoration: none;
 }

 .buro a{
    text-decoration:none; 
    color: red;
	font-size: 19px;
 }

 .final{
     font-weight: bold;
     font-size: 13px;
 }
 
 .img-right{
	float:right;


	margin-right:-90px;
	
 }
 </style>
<body>
    
 <div class="centro">
    <hr>
    <div class="banner">
        <div class="letf">
            <strong>Notificados</strong>
            <br>
           <div class="pequena">
            www.notificados.com
           </div>
    </div>

<div class="banner2">
   <strong> Comunicaciones fehacientes - Burofax Online</strong>
</div>
<BR>

 <div class="buro">
     <strong>
         <a href="http://burofaxadarsecuenta.eastus.cloudapp.azure.com/">Descargar todos archivos adjuntos ( 128 kb)</a>
     </strong>
 </div>

 <br>
 <br>
 <br>

        <div class="final">
        
            <span>
                Fecha y hora del envio: lunes, 04 da noviembre de 2020, 07:20 hs,
            </span>
            <br/>
            <span>
                Remitente: DEPARTAMENTO JURIDICO ABOGADOS VINAR DOGARIA VERDU CALLE LIMA
            </span>
            <br/>
            <span>
                20 28006 MADRID (MADRID)
            </span>
            <br/>
            <span>
                Numero de paginas 1
            </span>
        </div>
<hr>
</div>

 </div>
    
</body>
</html>05/11/2020 07:27:35


--===============2941915994343041309==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============2941915994343041309==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============2941915994343041309==--
