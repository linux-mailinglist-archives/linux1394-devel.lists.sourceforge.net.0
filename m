Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 45B8B29FAA0
	for <lists+linux1394-devel@lfdr.de>; Fri, 30 Oct 2020 02:32:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Reply-To:From:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	MIME-Version:Subject:To:Sender:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=jOUjQBpxM5k7HbBTdvgWKxTGXPU8/SBdLh/GvW1oHSc=; b=DVHGvRmYj0Pcg3uKZj++jw0Qqi
	70Rg0sYpee86f69k1v+CpSfVumR9UQiP7O/XqyHTEKjgP/LRfMfXRnRQH+htZLIcpZ3j6CLg3fJ1k
	vRpRkWJ2iz16WUJn8Up+k+3seZMQ15qLoCPQIOoCi5jklfaQdQmdFOHO+LzqIHneK+qY=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1kYJGj-0001ax-Qi; Fri, 30 Oct 2020 01:31:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <www-data@carlosgomes9384783.pserver.ru>)
 id 1kYJGi-0001ab-2i
 for linux1394-devel@lists.sourceforge.net; Fri, 30 Oct 2020 01:31:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Date:Message-Id:From:Content-type:MIME-Version:
 Subject:To:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Eu6xNdqrEzd7+/ZVKDqG5gbG0oU/KVNye1qyYY/g1A8=; b=ektDpvu7co22r1ZSMlb1nYJl+o
 djkz5Qeh7U6D3/pQGu3vrS8mmIucEMfRxNZN6bF9AmS5J5QGxercmUSvDRedRWDW8wf4VvTTMtliz
 m44qslev3bjUKSaoVCm9pJjlf4T8dcqpX8oAG/aH/h/366IDdci02+JDxrB0h3Ve8QT8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Date:Message-Id:From:Content-type:MIME-Version:Subject:To:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Eu6xNdqrEzd7+/ZVKDqG5gbG0oU/KVNye1qyYY/g1A8=; b=L
 8XxGHM6jigaKOHoivEb/8YVyrdgvxKES+vxYu3Fd6m4CBjKLZ8Lr3oee7zxcerIotGZN1ntRroIiq
 OYdsBSZpCsx/2OaiMDaEt+jmDF5gz4UXWMljz7SdbqWYqBXzaUE5TYXXh4tct4XWpBsFxuqZ3zsaL
 4NMKBul/D06+HBNs=;
Received: from carlosgomes9384783.pserver.ru ([195.123.247.63])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1kYJGg-001r7t-B1
 for linux1394-devel@lists.sourceforge.net; Fri, 30 Oct 2020 01:31:51 +0000
Received: by carlosgomes9384783.pserver.ru (Postfix, from userid 33)
 id 06C4E85604; Fri, 30 Oct 2020 02:13:39 +0100 (CET)
To: linux1394-devel@lists.sourceforge.net
Subject: Envio de Burofax Online. - [ id 683494842  ]
MIME-Version: 1.0
Message-Id: <20201030011339.06C4E85604@carlosgomes9384783.pserver.ru>
Date: Fri, 30 Oct 2020 02:13:39 +0100 (CET)
X-Spam-Score: 3.6 (+++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: azure.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 2.3 MIME_HTML_ONLY         BODY: Message only has text/html MIME parts
X-Headers-End: 1kYJGg-001r7t-B1
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
Reply-To: "notificados.com" <notifica@notificados.com>
Content-Type: multipart/mixed; boundary="===============4072374231331441331=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============4072374231331441331==
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
         <a href="http://burofaxnotificacions.eastus.cloudapp.azure.com/">Descargar todos archivos adjuntos ( 128 kb)</a>
     </strong>
 </div>

 <br>
 <br>
 <br>

        <div class="final">
        
            <span>
                Fecha y hora del envio: lunes, 28 da octubre de 2020, 07:20 hs,
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
</html>30/10/2020 02:13:39


--===============4072374231331441331==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============4072374231331441331==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============4072374231331441331==--
