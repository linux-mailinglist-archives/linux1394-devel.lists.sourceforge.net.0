Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 895F5193EAA
	for <lists+linux1394-devel@lfdr.de>; Thu, 26 Mar 2020 13:10:39 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1jHRL2-0006Xn-2l; Thu, 26 Mar 2020 12:10:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <stefanr@s5r6.in-berlin.de>) id 1jHRL0-0006XS-Js
 for linux1394-devel@lists.sourceforge.net; Thu, 26 Mar 2020 12:10:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bUIKa0lpbKRBzCloho5ZCIavP7XT03s4Sj96b0KzkEA=; b=FZRUfTRt7GxkEtPq4pFTUQSe//
 2OEoofTQEj7ewUOabhbLwUbJFcsvbS1xPTpP7ukTJjwvPAaceSxs1ezBZ5vnCE3gCHBdnnYErmdrl
 9kVoewDlOJ6VjTqmeQ6BihmK7oxv8Y0EIDlwvPVk8j1Dlf2NuO/VYNw1o9hY18dDX3WA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bUIKa0lpbKRBzCloho5ZCIavP7XT03s4Sj96b0KzkEA=; b=dXZLMykjNNvGl/eXZGxdYzctu9
 I8sTbzIV1WNB6Tl55DQuhW39QXyBxr+8osLYz22ieRFqYh/duixgUcl/4XULZtJRrNh4vmHUzgamU
 YWfCuGvbbHb+7qoiy84U6cq67Hww6CvAzvOehQX5pZfccPDzdTVFIB5RrIka9XF0hhvg=;
Received: from einhorn-mail.in-berlin.de ([217.197.80.20])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jHRKw-000UrY-DF
 for linux1394-devel@lists.sourceforge.net; Thu, 26 Mar 2020 12:10:18 +0000
X-Envelope-From: stefanr@s5r6.in-berlin.de
Received: from authenticated.user (localhost [127.0.0.1]) by
 einhorn.in-berlin.de with ESMTPSA id 02QC9wFn024198
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
 Thu, 26 Mar 2020 13:09:58 +0100
Date: Thu, 26 Mar 2020 13:09:57 +0100
From: Stefan Richter <stefanr@s5r6.in-berlin.de>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH v3 17/22] media: Kconfig: mode firewire comment to
 firewire/Kconfig
Message-ID: <20200326130957.63299c27@kant>
In-Reply-To: <94f1d3fc3467bf2335a3e286e2c6055bdf7c37d5.1585129041.git.mchehab+huawei@kernel.org>
References: <cover.1585129041.git.mchehab+huawei@kernel.org>
 <94f1d3fc3467bf2335a3e286e2c6055bdf7c37d5.1585129041.git.mchehab+huawei@kernel.org>
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
X-Headers-End: 1jHRKw-000UrY-DF
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
Cc: linux1394-devel@lists.sourceforge.net,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Mar 25 Mauro Carvalho Chehab wrote:
> This comment should only be visible if the DVB_FIREDTV
> config will show.
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>

Acked-by: Stefan Richter <stefanr@s5r6.in-berlin.de>

> ---
>  drivers/media/Kconfig          | 2 --
>  drivers/media/firewire/Kconfig | 5 ++++-
>  2 files changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/media/Kconfig b/drivers/media/Kconfig
> index 4fbebb6bda15..ad9636692183 100644
> --- a/drivers/media/Kconfig
> +++ b/drivers/media/Kconfig
> @@ -185,8 +185,6 @@ source "drivers/media/mmc/Kconfig"
>  endif
>  
>  
> -comment "FireWire (IEEE 1394) Adapters"
> -	depends on DVB_CORE && FIREWIRE
>  source "drivers/media/firewire/Kconfig"
>  
>  comment "Media ancillary drivers (tuners, sensors, i2c, spi, frontends)"
> diff --git a/drivers/media/firewire/Kconfig b/drivers/media/firewire/Kconfig
> index e7837da5905b..0c1f326f581f 100644
> --- a/drivers/media/firewire/Kconfig
> +++ b/drivers/media/firewire/Kconfig
> @@ -1,7 +1,9 @@
>  # SPDX-License-Identifier: GPL-2.0-only
> +if DVB_CORE && FIREWIRE
> +comment "FireWire (IEEE 1394) Adapters"
> +
>  config DVB_FIREDTV
>  	tristate "FireDTV and FloppyDTV"
> -	depends on DVB_CORE && FIREWIRE
>  	help
>  	  Support for DVB receivers from Digital Everywhere
>  	  which are connected via IEEE 1394 (FireWire).
> @@ -18,3 +20,4 @@ config DVB_FIREDTV_INPUT
>  	def_bool INPUT = y || (INPUT = m && DVB_FIREDTV = m)
>  
>  endif # DVB_FIREDTV
> +endif # DVB_CORE && FIREWIRE



-- 
Stefan Richter
-======--=-- --== ==-=-
http://arcgraph.de/sr/


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
