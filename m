Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B9A1BBD353C
	for <lists+linux1394-devel@lfdr.de>; Mon, 13 Oct 2025 16:03:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JyeC8b5ENbq9dSd0yR7sVWOQbRsqxM5kJggXUveRZd8=; b=lFbc5FjDqwSj5I60l+r4J5HAn6
	dwE6E/mM8eoBkPeoWCAO2A/I8Hy5geKNkr3GRGm5AtIu5P5tLFXeXDfyyXFid993L9+Y0lCy8M9AU
	L79BbLSk1QGDcXok5TGYKiHm81NUub2BCwCo4k3dJwZcOn/QukT3EKFg0L5HMkPNPfEM=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1v8J98-0002lJ-N8;
	Mon, 13 Oct 2025 14:03:31 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1v8J97-0002l3-9O
 for linux1394-devel@lists.sourceforge.net;
 Mon, 13 Oct 2025 14:03:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ju0TXwkvur7Pc8DU4WdaqDLH7X5oT5Eo8QJC4dqaWb4=; b=DkYhrjKFOvk5NSprE0C4PTjVcN
 BKti4nn8IT8ou76bID1/IEjXtnGDPA3HA3+NozG0Tgv8yc1nqHMspcyMQHkOLDbUHEaavOEqc1M2i
 eFzc+rMZHQkeFeJLkFozWnw9oy6vTKQNp0b45THpBtvwi2WOD/LByzJxoQJRyQpo6Wyo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ju0TXwkvur7Pc8DU4WdaqDLH7X5oT5Eo8QJC4dqaWb4=; b=KSQyZEMvVHvun6c8YMKa263X1D
 Uet5THY2GO8HeoQOWnVeypIzMEXUtkCTQG1rC78hYJbzttdqu3vez1Er4AFDLMAt45hEaQzHXxNzS
 uK838RlVLnbbVlnr6JZngc8FcDkfGCFhB0dvbHkEqNkSD/IQEnuJC25+gfF6eihrFZxc=;
Received: from fout-b2-smtp.messagingengine.com ([202.12.124.145])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1v8J97-0001Yc-6g for linux1394-devel@lists.sourceforge.net;
 Mon, 13 Oct 2025 14:03:30 +0000
Received: from phl-compute-01.internal (phl-compute-01.internal [10.202.2.41])
 by mailfout.stl.internal (Postfix) with ESMTP id B4E341D00188;
 Mon, 13 Oct 2025 10:03:18 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-01.internal (MEProxy); Mon, 13 Oct 2025 10:03:18 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1760364198; x=
 1760450598; bh=ju0TXwkvur7Pc8DU4WdaqDLH7X5oT5Eo8QJC4dqaWb4=; b=c
 1JrtJKdnXQfxlqtEAInguBEN0kIlB+MFkFPvFIm6GNUqeXiVb6ZRt7uWy4029yx3
 AVGhnkiovIaahOPaFt7ckFdIgwrcZvzYPMDknT1Es+TZkfT6ffKnztms/PJnIhBL
 uI2Renv6an7qno1Y6EQtNbWDEe04YEL8P2ASuvdT3XHLeUsLK3a6hNCFnpB43E77
 RDzPU9gZ52MPpznF1Eb6TxFy3kULDMg1GO466buC5TnlE84LIIWVbrBgYZqahHKO
 Rek3KYhmgmAvQvkUOMSZ47ws6/bUeU2AmMVPaTbqZESFhBo86m37o0EIetgFhRpd
 4iC7fep53HkaAexDEbinw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm2; t=1760364198; x=1760450598; bh=j
 u0TXwkvur7Pc8DU4WdaqDLH7X5oT5Eo8QJC4dqaWb4=; b=ruIN39FmjGCMhtRJV
 ARr8ow+pwdnOlbw1WWTXQYyi1+1OBKlwlP8IB4kf8uCksYF1dB8QCMyIkSIOXS91
 Xykefta5lDZ01ousXCBndsAFLE1kBaA3+vkDupdRarCkm8M5YxULh56EFoI9CpwB
 ZZLf86z0mPwKozwSHnOnQe3Aymwjkh1vSycMDs2A0xbJ63UyZdoQ3ZVzJpJF0SnN
 7Rcclx1qVvc7RxhKHTuyd9Hxb2JbuOj43q+fuCGE3TEUlRpZHsFH3b/nLCyvFvDY
 7WSdnbZVEsuluX0wXy7m4ZYwzdZGVpW36Fszew/fBhYIWmYLXxdPJ4IhAjXE7R/F
 /7kyQ==
X-ME-Sender: <xms:pgbtaBB498kyOEGyGbYbmYLTnvytO1tNxuz-5mr-CnsRv2MdinNyzQ>
 <xme:pgbtaNfH1gqDQLfcwUBvKNkGsSgZXGwQyoG4Msc55ZfqNM0_LgLvMlSlGufPY3fbe
 6pR50KDEoRrAL4EuOc-xYhdreuM-bNQJaDU63dBgUeBf_HnuiIoQBY>
X-ME-Received: <xmr:pgbtaEK--Cqq1S7z2Uw58E8etIXUiWoNZ1L_KvHV8Z9BAM68IKIniVdzfnG7tYZ4YCA6Y9gNqXWOXhE7z3YYTdl5PRspw7OwSdsxbqml0UzC5g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdduudejkeegucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgjeeuvd
 fguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushhtvghr
 ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrg
 hkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopedvpdhmohguvgepshhmthhpohhu
 thdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlsehlihhsthhsrdhsohhurh
 gtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgv
 rhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:pgbtaIc5SAWxQsL6BkD7wXdeP0a5k8PwYAcQksLhRXH_OuC4eG-etg>
 <xmx:pgbtaD17eBkGQ_xqWra-0qb9bphQODz0B7ZaJc0_zFmPJHP0zRSC1g>
 <xmx:pgbtaJg-E0t2d7po3yoHhO3af8f6Q1cmbLnugk42yF3p8RLYPmhHpQ>
 <xmx:pgbtaBQ_DPp2FknKOVTKk1PjfJ__xviqKNmutbninVxq0rbIGD7upQ>
 <xmx:pgbtaC1dE5IcjWh7S0i621g3dKx204tCLPNgG7L0zwWbzYE8a91QduHP>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 13 Oct 2025 10:03:17 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 2/2] firewire: core: handle device quirk of MOTU Audio Express
Date: Mon, 13 Oct 2025 23:03:11 +0900
Message-ID: <20251013140311.97159-3-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251013140311.97159-1-o-takashi@sakamocchi.jp>
References: <20251013140311.97159-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: A commit 3a93d082bacf ("ALSA: firewire-motu: add support for
 MOTU Audio Express") describes a quirk of MOTU Audio Express. The device
 returns acknowledge packet with 0x10 as the pending state of any t [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1v8J97-0001Yc-6g
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
Cc: linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

A commit 3a93d082bacf ("ALSA: firewire-motu: add support for MOTU Audio
Express") describes a quirk of MOTU Audio Express. The device returns
acknowledge packet with 0x10 as the pending state of any types of
asynchronous request transaction. It is completely out of specification.

This commit implements handling for that device-specific quirk. The quirk
is detected after reading the root directory of configuration ROM. When
processing the acknowledge code in 1394 OHCI AT context event handler,
firewire-ohci module seeks the device instance of destination node by
traversing device hierarchy. If the device has the quirk, the acknowledge
code is replaced with the standard code.

The 1394 OHCI AT context events occur for outgoing asynchronous request
packets. The device traversal is safe since no new request initiators
exist after the fw_card_instance has been invalidated.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-device.c | 53 ++++++++++++++++++++++++++++++++++
 drivers/firewire/ohci.c        | 29 +++++++++++++++++++
 include/linux/firewire.h       |  3 ++
 3 files changed, 85 insertions(+)

diff --git a/drivers/firewire/core-device.c b/drivers/firewire/core-device.c
index 9bab2d594b89..33ce4cd357ed 100644
--- a/drivers/firewire/core-device.c
+++ b/drivers/firewire/core-device.c
@@ -557,6 +557,54 @@ static int detect_quirks_by_bus_information_block(const u32 *bus_information_blo
 	return quirks;
 }
 
+struct entry_match {
+	unsigned int index;
+	u32 value;
+};
+
+static const struct entry_match motu_audio_express_matches[] = {
+	{ 1, 0x030001f2 },
+	{ 3, 0xd1000002 },
+	{ 4, 0x8d000005 },
+	{ 6, 0x120001f2 },
+	{ 7, 0x13000033 },
+	{ 8, 0x17104800 },
+};
+
+static int detect_quirks_by_root_directory(const u32 *root_directory, unsigned int length)
+{
+	static const struct {
+		enum fw_device_quirk quirk;
+		const struct entry_match *matches;
+		unsigned int match_count;
+	} *entry, entries[] = {
+		{
+			.quirk = FW_DEVICE_QUIRK_ACK_PACKET_WITH_INVALID_PENDING_CODE,
+			.matches = motu_audio_express_matches,
+			.match_count = ARRAY_SIZE(motu_audio_express_matches),
+		},
+	};
+	int quirks = 0;
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(entries); ++i) {
+		int j;
+
+		entry = entries + i;
+		for (j = 0; j < entry->match_count; ++j) {
+			unsigned int index = entry->matches[j].index;
+			unsigned int value = entry->matches[j].value;
+
+			if ((length < index) || (root_directory[index] != value))
+				break;
+		}
+		if (j == entry->match_count)
+			quirks |= entry->quirk;
+	}
+
+	return quirks;
+}
+
 static int read_rom(struct fw_device *device,
 		    int generation, int index, u32 *data)
 {
@@ -737,6 +785,11 @@ static int read_config_rom(struct fw_device *device, int generation)
 			length = i;
 	}
 
+	quirks |= detect_quirks_by_root_directory(rom + ROOT_DIR_OFFSET, length - ROOT_DIR_OFFSET);
+
+	// Just prevent from torn writing/reading.
+	WRITE_ONCE(device->quirks, quirks);
+
 	old_rom = device->config_rom;
 	new_rom = kmemdup(rom, length * 4, GFP_KERNEL);
 	if (new_rom == NULL) {
diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 030aed5453a1..757dd9c64b1c 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -1319,6 +1319,14 @@ static void at_context_flush(struct at_context *ctx)
 	enable_work(&ctx->work);
 }
 
+static int find_fw_device(struct device *dev, const void *data)
+{
+	struct fw_device *device = fw_device(dev);
+	const u32 *params = data;
+
+	return (device->generation == params[0]) && (device->node_id == params[1]);
+}
+
 static int handle_at_packet(struct context *context,
 			    struct descriptor *d,
 			    struct descriptor *last)
@@ -1390,6 +1398,27 @@ static int handle_at_packet(struct context *context,
 		fallthrough;
 
 	default:
+		if (unlikely(evt == 0x10)) {
+			u32 params[2] = {
+				packet->generation,
+				async_header_get_destination(packet->header),
+			};
+			struct device *dev;
+
+			fw_card_get(&ohci->card);
+			dev = device_find_child(ohci->card.device, (const void *)params, find_fw_device);
+			fw_card_put(&ohci->card);
+			if (dev) {
+				struct fw_device *device = fw_device(dev);
+				int quirks = READ_ONCE(device->quirks);
+
+				put_device(dev);
+				if (quirks & FW_DEVICE_QUIRK_ACK_PACKET_WITH_INVALID_PENDING_CODE) {
+					packet->ack = ACK_PENDING;
+					break;
+				}
+			}
+		}
 		packet->ack = RCODE_SEND_ERROR;
 		break;
 	}
diff --git a/include/linux/firewire.h b/include/linux/firewire.h
index 161829cfcc00..f1d8734c0ec6 100644
--- a/include/linux/firewire.h
+++ b/include/linux/firewire.h
@@ -176,6 +176,9 @@ enum fw_device_quirk {
 
 	// See a509e43ff338 ("firewire: core: fix unstable I/O with Canon camcorder").
 	FW_DEVICE_QUIRK_IRM_IGNORES_BUS_MANAGER = BIT(1),
+
+	// MOTU Audio Express transfers acknowledge packet with 0x10 for pending state.
+	FW_DEVICE_QUIRK_ACK_PACKET_WITH_INVALID_PENDING_CODE = BIT(2),
 };
 
 enum fw_device_state {
-- 
2.51.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
