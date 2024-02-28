Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E709C86AC73
	for <lists+linux1394-devel@lfdr.de>; Wed, 28 Feb 2024 12:02:14 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rfHhH-0001bf-KT;
	Wed, 28 Feb 2024 11:02:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <adamg@pobox.com>) id 1rfHhE-0001bL-IT
 for linux1394-devel@lists.sourceforge.net;
 Wed, 28 Feb 2024 11:01:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RiGKPBITSk4F39lpkuUh8uvPpXq9t3Bcg+0/637290w=; b=lmchuXVxJi8CIYm1biP8kA8Xz5
 xqlUm9vgDk6VQ6uGzj20vDDaXf74Ef4Xg7gHc8QGkBWzsmeDpUMyk7WqFNuzBxOvcO7zJpxSKXsSE
 Q0wajZIRhltgPJjM80Y4iBkd7G++XxqIIyA/621GUrUgKB39NMzkJ+f+o778v1JMSlGw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=RiGKPBITSk4F39lpkuUh8uvPpXq9t3Bcg+0/637290w=; b=F
 DfpQeZ0FhexlYAX6oy8KHrb2XRL+GBM0OYYqrHZtmcxnes8OXaoTmX1cEq4V8IF195hlJeE3yOro2
 Ph5BiLUPIa+sdp9hC8GIoJAyQ+ZTl7OhBq4DJH6K59z0ndgei92q7oyyynXHe8R3oeCYMr7HvdLhf
 ZfAncLsjuPTsIYYg=;
Received: from pb-smtp2.pobox.com ([64.147.108.71])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rfHhE-00033X-4M for linux1394-devel@lists.sourceforge.net;
 Wed, 28 Feb 2024 11:01:57 +0000
Received: from pb-smtp2.pobox.com (unknown [127.0.0.1])
 by pb-smtp2.pobox.com (Postfix) with ESMTP id 40AE31D8B6A
 for <linux1394-devel@lists.sourceforge.net>;
 Wed, 28 Feb 2024 06:01:45 -0500 (EST) (envelope-from adamg@pobox.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=pobox.com; h=date:from
 :to:subject:message-id:mime-version:content-type; s=sasl; bh=rMw
 nVgODEL8zMJH2NV8ovBSFBYMMXQYJHRjxI8k7DAQ=; b=aN2Qa9URcK1uWkuqWkZ
 00xI9XBn0EZrjqK1s1go02XVezW1j+yeMbZM7DD85Q4k/RqSyBBvXntXsYhgVLUj
 T23MtKDjVyiS1hh51Y3Nkzk8hNzYS2J7noLWAVud7m66LoHAjU3npE9+BFxmetvd
 N5BkNVQeLMvneNRA8Phb3zTw=
Received: from pb-smtp2.nyi.icgroup.com (unknown [127.0.0.1])
 by pb-smtp2.pobox.com (Postfix) with ESMTP id 376521D8B68
 for <linux1394-devel@lists.sourceforge.net>;
 Wed, 28 Feb 2024 06:01:45 -0500 (EST) (envelope-from adamg@pobox.com)
Received: from pogo.deviceside.com (unknown [71.19.144.253])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by pb-smtp2.pobox.com (Postfix) with ESMTPSA id A4D7C1D8B67
 for <linux1394-devel@lists.sourceforge.net>;
 Wed, 28 Feb 2024 06:01:44 -0500 (EST) (envelope-from adamg@pobox.com)
Received: from iguana.24-8.net (99-122-168-208.lightspeed.irvnca.sbcglobal.net
 [99.122.168.208])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (prime256v1) server-signature ECDSA (prime256v1)
 server-digest SHA256) (No client certificate requested)
 (Authenticated sender: iguana@pogo.deviceside.com)
 by pogo.deviceside.com (Postfix) with ESMTPSA id 7B5A2C0317
 for <linux1394-devel@lists.sourceforge.net>;
 Wed, 28 Feb 2024 03:01:43 -0800 (PST)
Date: Wed, 28 Feb 2024 03:01:41 -0800
From: Adam Goldman <adamg@pobox.com>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH v2] firewire: core: use long bus reset on gap count error
Message-ID: <Zd8SlIDexjaO8LNU@iguana.24-8.net>
MIME-Version: 1.0
Content-Disposition: inline
X-Pobox-Relay-ID: C2993F70-D628-11EE-A3CC-25B3960A682E-07713566!pb-smtp2.pobox.com
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Adam Goldman <adamg@pobox.com> When resetting the bus
 after a gap count error, use a long rather than short bus reset. IEEE 1394-1995
 uses only long bus resets. IEEE 1394a adds the option of short bus resets.
 When video or audio transmission is in progress and a device is hot-plugged
 elsewhere on the bus, the resultin [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.108.71 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rfHhE-00033X-4M
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

From: Adam Goldman <adamg@pobox.com>

When resetting the bus after a gap count error, use a long rather than 
short bus reset.

IEEE 1394-1995 uses only long bus resets. IEEE 1394a adds the option of 
short bus resets. When video or audio transmission is in progress and a 
device is hot-plugged elsewhere on the bus, the resulting bus reset can 
cause video frame drops or audio dropouts. Short bus resets reduce or 
eliminate this problem. Accordingly, short bus resets are almost always 
preferred.

However, on a mixed 1394/1394a bus, a short bus reset can trigger an 
immediate additional bus reset. This double bus reset can be interpreted 
differently by different nodes on the bus, resulting in an inconsistent gap 
count after the bus reset. An inconsistent gap count will cause another bus 
reset, leading to a neverending bus reset loop. This only happens for some 
bus topologies, not for all mixed 1394/1394a buses.

By instead sending a long bus reset after a gap count inconsistency, we 
avoid the doubled bus reset, restoring the bus to normal operation.

Signed-off-by: Adam Goldman <adamg@pobox.com>
Link: https://sourceforge.net/p/linux1394/mailman/message/58741624/
---

--- linux-6.8-rc1.orig/drivers/firewire/core-card.c	2024-01-21 14:11:32.000000000 -0800
+++ linux-6.8-rc1/drivers/firewire/core-card.c	2024-02-28 02:23:48.000000000 -0800
@@ -484,7 +484,19 @@
 		fw_notice(card, "phy config: new root=%x, gap_count=%d\n",
 			  new_root_id, gap_count);
 		fw_send_phy_config(card, new_root_id, generation, gap_count);
-		reset_bus(card, true);
+		/*
+		 * Where possible, use a short bus reset to minimize
+		 * disruption to isochronous transfers. But in the event
+		 * of a gap count inconsistency, use a long bus reset.
+		 *
+		 * As noted in 1394a 8.4.6.2, nodes on a mixed 1394/1394a bus
+		 * may set different gap counts after a bus reset. On a mixed
+		 * 1394/1394a bus, a short bus reset can get doubled. Some
+		 * nodes may treat the double reset as one bus reset and others
+		 * may treat it as two, causing a gap count inconsistency
+		 * again. Using a long bus reset prevents this.
+		 */
+		reset_bus(card, card->gap_count != 0);
 		/* Will allocate broadcast channel after the reset. */
 		goto out;
 	}



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
