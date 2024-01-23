Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CC108838897
	for <lists+linux1394-devel@lfdr.de>; Tue, 23 Jan 2024 09:12:09 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rSBsy-0008TH-Su;
	Tue, 23 Jan 2024 08:11:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <adamg@pobox.com>) id 1rSBsx-0008T8-G8
 for linux1394-devel@lists.sourceforge.net;
 Tue, 23 Jan 2024 08:11:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/A3YcgrxpXvtdhezWJ44JFIyIYgwUv9bXPoBvpYZ59o=; b=HKN2+qcvAQTL+eyYzrv0xUIP0X
 p+0QobSFnSRzo8pAHywNz5wluqBhbyy8atexAFrsNpYzUxkPaRCWQSBIi7djawdafEmAP4MPt+qAD
 byhWnDDdwzipUTn3evYFcCrm1IASQ06DUQYSAxVuL4S5K8zK+gDQFfH4SEq7qDzf70nA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=/A3YcgrxpXvtdhezWJ44JFIyIYgwUv9bXPoBvpYZ59o=; b=d
 1EFtDhrGRS99K7PVdsoyy3SQj7KVKRLL2yoSS3UMaVoXFnEPe6vmlCOAtg9ZCORjAPT+NyPFSPbS2
 mWYnvU5c1tzdiQuieG73zyZTDijjAW+WFJPwkjMq61Cl8XmHTm1LY4K09wIchxyzstP3qBID9ZFw1
 7WXHH6M704z5mb8w=;
Received: from pb-smtp2.pobox.com ([64.147.108.71])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rSBsw-0000g0-0v for linux1394-devel@lists.sourceforge.net;
 Tue, 23 Jan 2024 08:11:55 +0000
Received: from pb-smtp2.pobox.com (unknown [127.0.0.1])
 by pb-smtp2.pobox.com (Postfix) with ESMTP id E245F1CC8E9
 for <linux1394-devel@lists.sourceforge.net>;
 Tue, 23 Jan 2024 03:11:43 -0500 (EST) (envelope-from adamg@pobox.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=pobox.com; h=date:from
 :to:subject:message-id:mime-version:content-type; s=sasl; bh=kYs
 2I7BB/qtea05yRpQruY8Kjhe80RARuEP9nu2QygE=; b=ZjB8c5393TVw2vNaN3k
 UMjqY58fxGz/J8yAWNgg2C8nE/Z99HZBBuBL1biJC04m8OnSITx4Q4RYC+ovMGnX
 JLYLkq5BQjrEhAywN6uU0AaM5us+qlpeeS4dWe/gBKi4ri0hmAzy3Y2xCC8Hhygw
 9PycvTR30Wlb1YXKaFLVSqrU=
Received: from pb-smtp2.nyi.icgroup.com (unknown [127.0.0.1])
 by pb-smtp2.pobox.com (Postfix) with ESMTP id DAB6A1CC8E8
 for <linux1394-devel@lists.sourceforge.net>;
 Tue, 23 Jan 2024 03:11:43 -0500 (EST) (envelope-from adamg@pobox.com)
Received: from pogo.deviceside.com (unknown [71.19.144.253])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by pb-smtp2.pobox.com (Postfix) with ESMTPSA id 5C90A1CC8E7
 for <linux1394-devel@lists.sourceforge.net>;
 Tue, 23 Jan 2024 03:11:43 -0500 (EST) (envelope-from adamg@pobox.com)
Received: from iguana.24-8.net (99-122-168-208.lightspeed.irvnca.sbcglobal.net
 [99.122.168.208])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (prime256v1) server-signature ECDSA (prime256v1)
 server-digest SHA256) (No client certificate requested)
 (Authenticated sender: iguana@pogo.deviceside.com)
 by pogo.deviceside.com (Postfix) with ESMTPSA id 29752C09CD
 for <linux1394-devel@lists.sourceforge.net>;
 Tue, 23 Jan 2024 00:11:42 -0800 (PST)
Date: Tue, 23 Jan 2024 00:11:40 -0800
From: Adam Goldman <adamg@pobox.com>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH] firewire: core: send bus reset promptly on gap count error
Message-ID: <Za90vAQlDhbLpY67@iguana.24-8.net>
MIME-Version: 1.0
Content-Disposition: inline
X-Pobox-Relay-ID: 0B47B28E-B9C7-11EE-B0CE-25B3960A682E-07713566!pb-smtp2.pobox.com
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: If we are bus manager and the bus has inconsistent gap counts,
 send a bus reset immediately instead of trying to read the root node's config
 ROM first. Otherwise, we could spend a lot of time trying t [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.108.71 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rSBsw-0000g0-0v
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

If we are bus manager and the bus has inconsistent gap counts, send a 
bus reset immediately instead of trying to read the root node's config 
ROM first. Otherwise, we could spend a lot of time trying to read the 
config ROM but never succeeding.

This eliminates a 50+ second delay before the FireWire bus is usable 
after a newly connected device is powered on in certain circumstances.

Signed-off-by: Adam Goldman <adamg@pobox.com>
Link: https://sourceforge.net/p/linux1394/mailman/message/58727806/
---

--- linux-source-6.1.orig/drivers/firewire/core-card.c	2023-09-23 02:11:13.000000000 -0700
+++ linux-source-6.1/drivers/firewire/core-card.c	2024-01-22 04:23:06.000000000 -0800
@@ -435,6 +435,16 @@
 		 * config rom.  In either case, pick another root.
 		 */
 		new_root_id = local_id;
+	} else if (card->gap_count == 0) {
+		/* 
+		 * If self IDs have inconsistent gap counts, do a
+		 * bus reset ASAP. The config rom read might never
+		 * complete, so don't wait for it. However, still
+		 * send a PHY configuration packet prior to the bus
+		 * reset, as permitted by IEEE 1394-2008 8.4.5.2.
+		 */
+		new_root_id = local_id;
+		card->bm_retries = 0;
 	} else if (!root_device_is_running) {
 		/*
		 * If we haven't probed this device yet, bail out now



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
