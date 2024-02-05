Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4375684934B
	for <lists+linux1394-devel@lfdr.de>; Mon,  5 Feb 2024 06:21:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rWrQB-0002e8-Qx;
	Mon, 05 Feb 2024 05:21:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <adamg@pobox.com>) id 1rWrQA-0002e2-QJ
 for linux1394-devel@lists.sourceforge.net;
 Mon, 05 Feb 2024 05:21:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xf/ToHA+LzffLRxG2WnjK/HqznfULTjmV7YaFV56IXU=; b=M8uswm2Md3To0QkWwrAGWXEt1Q
 1HDwdy20sLGPSQN5TCjy5hEe1Q7UuXumLJ81jFjxjsjNaintwPzmKkozE92OjIVh7xvn2wNT+Ijvf
 ExDXxdw9gCRGNXNES/Vlur3IyXVbLoMupTn5LA7xgBopzuYFo9EUxJc1515jUljNuFpI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=xf/ToHA+LzffLRxG2WnjK/HqznfULTjmV7YaFV56IXU=; b=S
 a2szULxsmiNMMCSUB7pYTjvTmuFbVZOxdmf2DlG0Sr9UkmoSnBvGgCj3kUFFB7gsv6DKE2OeX48T/
 uK3PoBSriA7PMByr0+ljxcq0ZrFF7mNNpEhkCsUxNJCXzpl3w6caIyV0ng+UMwdbtQDRA3uFdhhXL
 imm1Aj/DOXDj72Qc=;
Received: from pb-smtp1.pobox.com ([64.147.108.70])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rWrQ9-0008RM-Be for linux1394-devel@lists.sourceforge.net;
 Mon, 05 Feb 2024 05:21:31 +0000
Received: from pb-smtp1.pobox.com (unknown [127.0.0.1])
 by pb-smtp1.pobox.com (Postfix) with ESMTP id 279681DF525
 for <linux1394-devel@lists.sourceforge.net>;
 Mon,  5 Feb 2024 00:21:18 -0500 (EST) (envelope-from adamg@pobox.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=pobox.com; h=date:from
 :to:subject:message-id:mime-version:content-type; s=sasl; bh=FeM
 nBHPJWkwnpkjqhjM8CVZ44KH+abMunoJe9kCWm+4=; b=OuSjmxhGAPPdw2Ugzs3
 7auPQ4kZ0Os9mRknYaLgn5zVrldQu1kJLtp2OPtX7OxmVy92K6R8kmr6ficdPZUJ
 nmFu+7+7l2+GWccGWhPMlZa5QZBB+twG7kLr1I3cvzeh0O+RfTP1FIWB8HUGDxS5
 +dd19rvHQ8R/kfo+tuiNgGBw=
Received: from pb-smtp1.nyi.icgroup.com (unknown [127.0.0.1])
 by pb-smtp1.pobox.com (Postfix) with ESMTP id 2038A1DF524
 for <linux1394-devel@lists.sourceforge.net>;
 Mon,  5 Feb 2024 00:21:18 -0500 (EST) (envelope-from adamg@pobox.com)
Received: from pogo.deviceside.com (unknown [71.19.144.253])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by pb-smtp1.pobox.com (Postfix) with ESMTPSA id 9717D1DF523
 for <linux1394-devel@lists.sourceforge.net>;
 Mon,  5 Feb 2024 00:21:17 -0500 (EST) (envelope-from adamg@pobox.com)
Received: from iguana.24-8.net (99-122-168-208.lightspeed.irvnca.sbcglobal.net
 [99.122.168.208])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (prime256v1) server-signature ECDSA (prime256v1)
 server-digest SHA256) (No client certificate requested)
 (Authenticated sender: iguana@pogo.deviceside.com)
 by pogo.deviceside.com (Postfix) with ESMTPSA id 7D04FC08C4
 for <linux1394-devel@lists.sourceforge.net>;
 Sun,  4 Feb 2024 21:21:16 -0800 (PST)
Date: Sun, 4 Feb 2024 21:21:14 -0800
From: Adam Goldman <adamg@pobox.com>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH v2] firewire: core: send bus reset promptly on gap count error
Message-ID: <ZcBwSuyYtPEqwk8Y@iguana.24-8.net>
MIME-Version: 1.0
Content-Disposition: inline
X-Pobox-Relay-ID: 639F05DA-C3E6-11EE-B60B-78DCEB2EC81B-07713566!pb-smtp1.pobox.com
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
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
 low trust [64.147.108.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rWrQ9-0008RM-Be
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

This eliminates a 50+ second delay before the FireWire bus is usable after 
a newly connected device is powered on in certain circumstances.

The delay occurs if a gap count inconsistency occurs, we are not the root 
node, and we become bus manager. One scenario that causes this is with a TI 
XIO2213B OHCI, the first time a Sony DSR-25 is powered on after being 
connected to the FireWire cable. In this configuration, the Linux box will 
not receive the initial PHY configuration packet sent by the DSR-25 as IRM, 
resulting in the DSR-25 having a gap count of 44 while the Linux box has a 
gap count of 63.

FireWire devices have a gap count parameter, which is set to 63 on power-up 
and can be changed with a PHY configuration packet. This determines the 
duration of the subaction and arbitration gaps. For reliable communication, 
all nodes on a FireWire bus must have the same gap count.

A node may have zero or more of the following roles: root node, bus manager 
(BM), isochronous resource manager (IRM), and cycle master. Unless a root 
node was forced with a PHY configuration packet, any node might become root 
node after a bus reset. Only the root node can become cycle master. If the 
root node is not cycle master capable, the BM or IRM should force a change 
of root node.

After a bus reset, each node sends a self-ID packet, which contains its 
current gap count. A single bus reset does not change the gap count, but 
two bus resets in a row will set the gap count to 63. Because a consistent 
gap count is required for reliable communication, IEEE 1394a-2000 requires 
that the bus manager generate a bus reset if it detects that the gap count 
is inconsistent.

When the gap count is inconsistent, build_tree() will notice this after the 
self identification process. It will set card->gap_count to the invalid 
value 0. If we become bus master, this will force bm_work() to send a bus 
reset when it performs gap count optimization.

After a bus reset, there is no bus manager. We will almost always try to 
become bus manager. Once we become bus manager, we will first determine 
whether the root node is cycle master capable. Then, we will determine if 
the gap count should be changed. If either the root node or the gap count 
should be changed, we will generate a bus reset.

To determine if the root node is cycle master capable, we read its 
configuration ROM. bm_work() will wait until we have finished trying to 
read the configuration ROM.

However, an inconsistent gap count can make this take a long time. 
read_config_rom() will read the first few quadlets from the config ROM. Due 
to the gap count inconsistency, eventually one of the reads will time out. 
When read_config_rom() fails, fw_device_init() calls it again until 
MAX_RETRIES is reached. This takes 50+ seconds.

Once we give up trying to read the configuration ROM, bm_work() will wake 
up, assume that the root node is not cycle master capable, and do a bus 
reset. Hopefully, this will resolve the gap count inconsistency.

This change makes bm_work() check for an inconsistent gap count before 
waiting for the root node's configuration ROM. If the gap count is 
inconsistent, bm_work() will immediately do a bus reset. This eliminates 
the 50+ second delay and rapidly brings the bus to a working state.

I considered that if the gap count is inconsistent, a PHY configuration 
packet might not be successful, so it could be desirable to skip the PHY 
configuration packet before the bus reset in this case. However, IEEE 
1394a-2000 and IEEE 1394-2008 say that the bus manager may transmit a PHY 
configuration packet before a bus reset when correcting a gap count error. 
Since the standard endorses this, I decided it's safe to retain the PHY 
configuration packet transmission.

Normally, after a topology change, we will reset the bus a maximum of 5 
times to change the root node and perform gap count optimization. However, 
if there is a gap count inconsistency, we must always generate a bus reset. 
Otherwise the gap count inconsistency will persist and communication will 
be unreliable. For that reason, if there is a gap count inconstency, we 
generate a bus reset even if we already reached the 5 reset limit.

Signed-off-by: Adam Goldman <adamg@pobox.com>
Link: https://sourceforge.net/p/linux1394/mailman/message/58727806/
---

--- linux-source-6.1.orig/drivers/firewire/core-card.c	2023-09-23 02:11:13.000000000 -0700
+++ linux-source-6.1/drivers/firewire/core-card.c	2024-02-04 20:24:53.000000000 -0800
@@ -429,7 +429,23 @@
 	 */
 	card->bm_generation = generation;
 
-	if (root_device == NULL) {
+	if (card->gap_count == 0) {
+		/* 
+		 * If self IDs have inconsistent gap counts, do a
+		 * bus reset ASAP. The config rom read might never
+		 * complete, so don't wait for it. However, still
+		 * send a PHY configuration packet prior to the
+		 * bus reset. The PHY configuration packet might
+		 * fail, but 1394-2008 8.4.5.2 explicitly permits
+		 * it in this case, so it should be safe to try.
+		 */
+		new_root_id = local_id;
+		/*
+		 * We must always send a bus reset if the gap count
+		 * is inconsistent, so bypass the 5-reset limit.
+		 */
+		card->bm_retries = 0;
+	} else if (root_device == NULL) {
 		/*
 		 * Either link_on is false, or we failed to read the
 		 * config rom.  In either case, pick another root.


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
