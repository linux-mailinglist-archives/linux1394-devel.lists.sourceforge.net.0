Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 78043F5A05
	for <lists+linux1394-devel@lfdr.de>; Fri,  8 Nov 2019 22:38:35 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1iTBxb-00069W-EA; Fri, 08 Nov 2019 21:38:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <arnd@arndb.de>) id 1iTBxZ-00069B-Cb
 for linux1394-devel@lists.sourceforge.net; Fri, 08 Nov 2019 21:38:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lpdQWKdDrOPtx3R/NC5nwe7J1uH5+RbEM2cIVGKt/So=; b=aCF2ra710ADga6N6g2/WpOXUw+
 pBMIW0j8ofhi7GbrdfzUcFf+xc23uBeB4eNXMUOMorMpc6RSBg89tnLV/HHfbC9zrFig6SDA/yHgT
 SVvS1orbpONh2HQ1Cds8G1nvqfdVHhCD1FXXDaiwZkXvxnSifSw9h3F+YgWTgQckeHnA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lpdQWKdDrOPtx3R/NC5nwe7J1uH5+RbEM2cIVGKt/So=; b=C59p9TDTQ6L9CfLE4P4iaV5dUe
 427xOZOALVhLWQk6h7ZHsHtvVJ1lwASN5DGV7SJClBs3Rv0eRG8KAcLXSdkcGdemyX9KmLqDOaD8R
 tqYXCoWj+pnpybSXukyN6+oN69rMoVNo2WP8olRUD8oOBZAqMZ8ryPyYSioOYSp029Ls=;
Received: from mout.kundenserver.de ([212.227.126.187])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iTBxX-006dCA-5n
 for linux1394-devel@lists.sourceforge.net; Fri, 08 Nov 2019 21:38:25 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.129]) with ESMTPA (Nemesis) id
 1N0WwO-1hfVjv2o8i-00wTtI; Fri, 08 Nov 2019 22:37:59 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: y2038@lists.linaro.org,
	Stefan Richter <stefanr@s5r6.in-berlin.de>
Subject: [PATCH 16/16] firewire: ohci: stop using get_seconds() for BUS_TIME
Date: Fri,  8 Nov 2019 22:32:54 +0100
Message-Id: <20191108213257.3097633-17-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191108213257.3097633-1-arnd@arndb.de>
References: <20191108213257.3097633-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:ShTMGp4lVNVsHj+KLbB1IsdO5sH5jn0FUtExiYeIktC9NBhPH68
 Eo6Di/s4x1/c0s0lLRtXEL3+pUqH2jXe+lTpS1u0fj9Wj5g2hSZfutPCDmz9vVx1gkCHN+t
 lGkblZXmLSCwyqit9GXFDVWTAAGNnFLncfw6TYZEMKhOitqIsxr/7PMTbimFz3Ksb8vTWOR
 lcjupetSVcK3O/vCeAMtQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:leyoQLNXbQg=:XqNTH//TUd2wRfId2+/xfy
 eQ+WZQp1hTDWEnjaAb3rr/ypuDM/uWEbbd+ht2cL4NNSBam+Merhk3GCl8f9Na4vCuujDmXp8
 dTjKewx5lcZM1j2vniPAnG5tRQtmf4DXuVdbRTg/AJW7r2nGu5oaik/cj+FLrQALbLu5W3S2g
 gn9HXG8FzCIFPb/yCthoolqyFw1m2CxJZI9yWZgM2EqbmeJkf1nAHcVCMqKOF6TCy1SC0r0pV
 YnTSdvXiIpNhzoHR2kfebW4bI7Jj+aN39JoSq370yilI8ABf3QPD/FULOrAElxyBBCVnigEUv
 qCDQH5Lo1X/AMa0go2UF08ZtuZ3WfXhE9/ULxTNV6KqnBU6W+jSU1tyAJtszmDnwmNIi6v8si
 jSBExJE9oZ5quHrJTc9DZ577cTb/GNuAJUDmoAub3HEkdJ2KxO5YZI0PUcsG22ysKX/+U0i6C
 0meZYkHhON7G/I6cH0I6NivXIWpO7MNRerECpI5I5D4h5NGqscYeORHflrzpCI25c9GxtLPQJ
 JgpoygF3V4/4nBEOZTUOYfpCRWcaWMe+ZyAt/gYF5GRy5WAU3VETV85RWCDjhPLFKp2LvhP8I
 BZDS6CJDy7h1TOWLwOBMIGvM5bLAayvlR1dex0YsaPLpEh1b22ozGKQF8+DrZy42ok1EDxLpJ
 SJhNU7KVWt3RglSABWD8Pc98EBImv87rsCwacFTUKL806Y2GIsiTq/6DqDKWKsih4BhsCtQax
 TV2lC6jZ38zsEPk/ETTxzKlYrkyogQt7gehGY9ObecJ2WRR+9e6JIM0XpYWBTEeXkZLIY2mLc
 Kn/cN2Ga7qkgoMkPqDxRkgz/aavM11Cuw+uzN2F84JYcYiOLXxXTBZLQ5pqciOre7GWcnWYXf
 8sV8mV4nOIfQV8FMpaVQ==
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: in-berlin.de]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [212.227.126.187 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iTBxX-006dCA-5n
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Richard Fontana <rfontana@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux1394-devel@lists.sourceforge.net, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

The ohci driver uses the get_seconds() function to implement the 32-bit
CSR_BUS_TIME register. This was added in 2010 commit a48777e03ad5
("firewire: add CSR BUS_TIME support").

As get_seconds() returns a 32-bit value (on 32-bit architectures), it
seems like a good fit for that register, but it is also deprecated because
of the y2038/y2106 overflow problem, and should be replaced throughout
the kernel with either ktime_get_real_seconds() or ktime_get_seconds().

I'm using the latter here, which uses monotonic time. This has the
advantage of behaving better during concurrent settimeofday() updates
or leap second adjustments and won't overflow a 32-bit integer, but
the downside of using CLOCK_MONOTONIC instead of CLOCK_REALTIME is
that the observed values are not related to external clocks.

If we instead need UTC but can live with clock jumps or overflows,
then we should use ktime_get_real_seconds() instead, retaining the
existing behavior.

Reviewed-by: Clemens Ladisch <clemens@ladisch.de>
Cc: Stefan Richter <stefanr@s5r6.in-berlin.de>
Link: https://lore.kernel.org/lkml/20180711124923.1205200-1-arnd@arndb.de/
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/firewire/ohci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 522f3addb5bd..33269316f111 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -1752,7 +1752,7 @@ static u32 update_bus_time(struct fw_ohci *ohci)
 
 	if (unlikely(!ohci->bus_time_running)) {
 		reg_write(ohci, OHCI1394_IntMaskSet, OHCI1394_cycle64Seconds);
-		ohci->bus_time = (lower_32_bits(get_seconds()) & ~0x7f) |
+		ohci->bus_time = (lower_32_bits(ktime_get_seconds()) & ~0x7f) |
 		                 (cycle_time_seconds & 0x40);
 		ohci->bus_time_running = true;
 	}
-- 
2.20.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
