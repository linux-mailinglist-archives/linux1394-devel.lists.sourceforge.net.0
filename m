Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 733D1FB958
	for <lists+linux1394-devel@lfdr.de>; Wed, 13 Nov 2019 21:05:13 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1iUysy-0000H7-TZ; Wed, 13 Nov 2019 20:05:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <stefanr@s5r6.in-berlin.de>) id 1iUysv-0000Gi-1E
 for linux1394-devel@lists.sourceforge.net; Wed, 13 Nov 2019 20:05:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ws1cG4tWR3qU8CKRybu4a3mcm8/xCCktRQdNlvzZyvA=; b=JMzQj8bS6yc4qWIkL6i98dOLpR
 0U/J0L9DEmLE1lkO957wllsZCrD7dI1/YWje8DjXy8nuUkxEqv83nYwhZpoMliDdz97O41U43Zz1N
 cf96o+F2mnXZ5RUdvfYLfUAwldGyvO2EDeHcfr/mG7C98wggfZYNXSWQymUhHd0Lj7kc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ws1cG4tWR3qU8CKRybu4a3mcm8/xCCktRQdNlvzZyvA=; b=PPB7qKixVa4dmLEJtZur9Q97Is
 uMFtOFhDAzV67feGcyt+Twr7cSuKFhjVKI8OCl1vBsPs1YiHXscH161BB8h4oWldtF8jXG6CQiYzI
 h/78BXEeojRURTk8/KNVRSxXgv+ltJkVQ1Lmx/+Od8Lc16S7COlxo6RSBVjoFxGYtbx8=;
Received: from einhorn-mail.in-berlin.de ([217.197.80.20])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iUysr-001yxk-C5
 for linux1394-devel@lists.sourceforge.net; Wed, 13 Nov 2019 20:04:59 +0000
X-Envelope-From: stefanr@s5r6.in-berlin.de
Received: from authenticated.user (localhost [127.0.0.1]) by
 einhorn.in-berlin.de with ESMTPSA id xADK4blA015292
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
 Wed, 13 Nov 2019 21:04:37 +0100
Date: Wed, 13 Nov 2019 21:04:37 +0100
From: Stefan Richter <stefanr@s5r6.in-berlin.de>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 16/16] firewire: ohci: stop using get_seconds() for
 BUS_TIME
Message-ID: <20191113210437.323f9acd@kant>
In-Reply-To: <20191108213257.3097633-17-arnd@arndb.de>
References: <20191108213257.3097633-1-arnd@arndb.de>
 <20191108213257.3097633-17-arnd@arndb.de>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: in-berlin.de]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1iUysr-001yxk-C5
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
Cc: y2038@lists.linaro.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Richard Fontana <rfontana@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux1394-devel@lists.sourceforge.net,
 Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Nov 08 Arnd Bergmann wrote:
> The ohci driver uses the get_seconds() function to implement the 32-bit
> CSR_BUS_TIME register. This was added in 2010 commit a48777e03ad5
> ("firewire: add CSR BUS_TIME support").
> 
> As get_seconds() returns a 32-bit value (on 32-bit architectures), it
> seems like a good fit for that register, but it is also deprecated because
> of the y2038/y2106 overflow problem, and should be replaced throughout
> the kernel with either ktime_get_real_seconds() or ktime_get_seconds().
> 
> I'm using the latter here, which uses monotonic time. This has the
> advantage of behaving better during concurrent settimeofday() updates
> or leap second adjustments and won't overflow a 32-bit integer, but
> the downside of using CLOCK_MONOTONIC instead of CLOCK_REALTIME is
> that the observed values are not related to external clocks.
> 
> If we instead need UTC but can live with clock jumps or overflows,
> then we should use ktime_get_real_seconds() instead, retaining the
> existing behavior.
> 
> Reviewed-by: Clemens Ladisch <clemens@ladisch.de>
> Cc: Stefan Richter <stefanr@s5r6.in-berlin.de>
> Link: https://lore.kernel.org/lkml/20180711124923.1205200-1-arnd@arndb.de/
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Committed to linux1394.git:for-next.
Thank you for the patch and your extraordinary patience.

> ---
>  drivers/firewire/ohci.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
> index 522f3addb5bd..33269316f111 100644
> --- a/drivers/firewire/ohci.c
> +++ b/drivers/firewire/ohci.c
> @@ -1752,7 +1752,7 @@ static u32 update_bus_time(struct fw_ohci *ohci)
>  
>  	if (unlikely(!ohci->bus_time_running)) {
>  		reg_write(ohci, OHCI1394_IntMaskSet, OHCI1394_cycle64Seconds);
> -		ohci->bus_time = (lower_32_bits(get_seconds()) & ~0x7f) |
> +		ohci->bus_time = (lower_32_bits(ktime_get_seconds()) & ~0x7f) |
>  		                 (cycle_time_seconds & 0x40);
>  		ohci->bus_time_running = true;
>  	}

-- 
Stefan Richter
-======---== =-== -==-=
http://arcgraph.de/sr/


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
