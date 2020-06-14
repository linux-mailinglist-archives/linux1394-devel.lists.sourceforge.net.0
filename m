Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 84BE21F8600
	for <lists+linux1394-devel@lfdr.de>; Sun, 14 Jun 2020 02:23:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1jkGQT-0000DK-Ko; Sun, 14 Jun 2020 00:23:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <fthain@telegraphics.com.au>) id 1jkGQT-0000DD-6C
 for linux1394-devel@lists.sourceforge.net; Sun, 14 Jun 2020 00:23:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DtOloXvWExgBLTftZkrORm7lj0YzyGjrihLH3MkuJck=; b=GlWE7Jh1frwiIRDnJ35UTtcT9i
 K6MrXZrs0adAFhe/d6v0Wp3IjIJEifCTits/JW4PqaCkZl4wQe4UaTvOrT6/u90Z76qPJLB+dxU48
 1ULDyyn30fRyEt8BwVYHvRJulqYJSJOEZDKKslmsxm7ygPrTy0UfwUpdUTH8viSJTX2U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DtOloXvWExgBLTftZkrORm7lj0YzyGjrihLH3MkuJck=; b=jvy2yS8Qg95PRTlsmhZMBEO0p+
 mjMNDpPhl1cVX65QiAmbKlvSFznK7SuMrk8GQaRk/DXsytlgyo8qHg/GT7kWOTeDZo4Q7XR92he9t
 Z9iqQeAJuh/b7sM2Puzq76AgO2XH+2dcdqFHFnKHN4DNPvkWCiL16NHUVqmiAVk3Bx0Y=;
Received: from kvm5.telegraphics.com.au ([98.124.60.144])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1jkGQR-00159v-OK
 for linux1394-devel@lists.sourceforge.net; Sun, 14 Jun 2020 00:23:05 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by kvm5.telegraphics.com.au (Postfix) with ESMTP id 4C7A927E75;
 Sat, 13 Jun 2020 20:03:43 -0400 (EDT)
Date: Sun, 14 Jun 2020 10:03:31 +1000 (AEST)
From: Finn Thain <fthain@telegraphics.com.au>
To: Chris Boot <bootc@bootc.net>
Subject: Re: [PATCH] scsi: target/sbp: remove firewire SBP target driver
In-Reply-To: <01020172acd3d10f-3964f076-a820-43fc-9494-3f3946e9b7b5-000000@eu-west-1.amazonses.com>
Message-ID: <alpine.LNX.2.22.394.2006140934520.15@nippy.intranet>
References: <01020172acd3d10f-3964f076-a820-43fc-9494-3f3946e9b7b5-000000@eu-west-1.amazonses.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: bootc.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jkGQR-00159v-OK
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
Cc: Bart Van Assche <bvanassche@acm.org>, linux-scsi@vger.kernel.org,
 Chuhong Yuan <hslester96@gmail.com>, linux-kernel@vger.kernel.org,
 Nicholas Bellinger <nab@linux-iscsi.org>, target-devel@vger.kernel.org,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 linux1394-devel@lists.sourceforge.net, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Sat, 13 Jun 2020, Chris Boot wrote:

> I no longer have the time to maintain this subsystem nor the hardware to
> test patches with. 

Then why not patch MAINTAINERS, and orphan it, as per usual practice?

$ git log --oneline MAINTAINERS | grep -i orphan

> It also doesn't appear to have any active users so I doubt anyone will 
> miss it.
> 

It's not unusual that any Linux driver written more than 5 years ago 
"doesn't appear to have any active users".

If a driver has been orphaned and broken in the past, and no-one stepped 
up to fix it within a reasonable period, removal would make sense. But 
that's not the case here.

I haven't used this driver for a long time, but I still own PowerMacs with 
firewire, and I know I'm not the only one.

> Signed-off-by: Chris Boot <bootc@bootc.net>
> ---
>  MAINTAINERS                     |    9 -
>  drivers/target/Kconfig          |    1 -
>  drivers/target/Makefile         |    1 -
>  drivers/target/sbp/Kconfig      |   12 -
>  drivers/target/sbp/Makefile     |    2 -
>  drivers/target/sbp/sbp_target.c | 2350 -------------------------------
>  drivers/target/sbp/sbp_target.h |  243 ----
>  7 files changed, 2618 deletions(-)
>  delete mode 100644 drivers/target/sbp/Kconfig
>  delete mode 100644 drivers/target/sbp/Makefile
>  delete mode 100644 drivers/target/sbp/sbp_target.c
>  delete mode 100644 drivers/target/sbp/sbp_target.h
> 


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
