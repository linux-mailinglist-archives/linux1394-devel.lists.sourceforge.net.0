Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 363F1EFDA1
	for <lists+linux1394-devel@lfdr.de>; Tue,  5 Nov 2019 13:49:54 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1iRyHI-0007A4-UX; Tue, 05 Nov 2019 12:49:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <stefanr@s5r6.in-berlin.de>) id 1iRyHH-00079x-PC
 for linux1394-devel@lists.sourceforge.net; Tue, 05 Nov 2019 12:49:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YaYX7RffdaU4nRFsB7K8NSWbMHMqNQtUQMQenQaBBk0=; b=PWrpY0pBA7zoAPkTn52+khmpQ/
 +VGl1Esg+eKGovNX5FPkoEPJZn2qHltI3mu0T7U8vWa8uCmCLQ2MVoBoeUSPDJCMwlK/Xgd+frP3e
 hkWHFGIXeD1HROy22X7UPZuifuCpXs33T9a3nOcmc7bH80uNGPp1LDHBBKYr487w1dbQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YaYX7RffdaU4nRFsB7K8NSWbMHMqNQtUQMQenQaBBk0=; b=Iu9ZV0/olPg6u3VwvIGm0AqXUL
 cevYevMlRb1ejm2Yx07wGH/b4sqoXHzkD/i4zmSVE7MUyv819NeErEhrB+6VZxVjTRwWv3FcddEOw
 p8Ae2lMmNQvaP8uvqbUaj6RhwGImX83ReXzJMN4XRQLK2unxyakev9NCgAMiMIGlCGi0=;
Received: from einhorn-mail.in-berlin.de ([217.197.80.20])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iRyHF-000sTh-M3
 for linux1394-devel@lists.sourceforge.net; Tue, 05 Nov 2019 12:49:43 +0000
X-Envelope-From: stefanr@s5r6.in-berlin.de
Received: from authenticated.user (localhost [127.0.0.1]) by
 einhorn.in-berlin.de with ESMTPSA id xA5CV9mi024948
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
 Tue, 5 Nov 2019 13:31:17 +0100
Date: Tue, 5 Nov 2019 13:31:06 +0100
From: Stefan Richter <stefanr@s5r6.in-berlin.de>
To: Forest Crossman <cyrozap@gmail.com>
Subject: Re: [PATCH] firewire: ohci: Fix misc. spelling/whitespace issues
Message-ID: <20191105133106.19e25b0d@kant>
In-Reply-To: <20191026082029.10358-1-cyrozap@gmail.com>
References: <20191026082029.10358-1-cyrozap@gmail.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: arcgraph.de]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1iRyHF-000sTh-M3
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
Cc: linux1394-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Oct 26 Forest Crossman wrote:
> These are just some inconsequential spelling and whitespace issues I
> found while studying the driver.
> 
> Signed-off-by: Forest Crossman <cyrozap@gmail.com>
> ---
>  drivers/firewire/ohci.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
> index 522f3addb5bd..50d49dc09d69 100644
> --- a/drivers/firewire/ohci.c
> +++ b/drivers/firewire/ohci.c
> @@ -448,7 +448,7 @@ static const char *evts[] = {
>  	[0x0c] = "-reserved-",		[0x0d] = "-reserved-",
>  	[0x0e] = "evt_unknown",		[0x0f] = "evt_flushed",
>  	[0x10] = "-reserved-",		[0x11] = "ack_complete",
> -	[0x12] = "ack_pending ",	[0x13] = "-reserved-",
> +	[0x12] = "ack_pending",		[0x13] = "-reserved-",

I think this space aligns it with ack_complete lines.
I'll check later this week.

>  	[0x14] = "ack_busy_X",		[0x15] = "ack_busy_A",
>  	[0x16] = "ack_busy_B",		[0x17] = "-reserved-",
>  	[0x18] = "-reserved-",		[0x19] = "-reserved-",
> @@ -1281,7 +1281,7 @@ struct driver_data {
>  };
>  
>  /*
> - * This function apppends a packet to the DMA queue for transmission.
> + * This function appends a packet to the DMA queue for transmission.
>   * Must always be called with the ochi->lock held to ensure proper
>   * generation handling and locking around packet queue manipulation.
>   */

-- 
Stefan Richter
-======---== =-== --=-=
http://arcgraph.de/sr/


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
