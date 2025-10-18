Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 141A8BEC6B3
	for <lists+linux1394-devel@lfdr.de>; Sat, 18 Oct 2025 05:56:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=o6MDLHiqVYMpcRCps912ABt9XYG2ctbY62DwFlvbl3M=; b=AL3yWgnmULerX4mnXk0+H7be3Z
	Q9sYAHEhdXEY6YDcp1pzqCXzsDL995z5KNnzc+Y0OpJ5E2cEpPjals3cHyyqpeBjG+/nEd6q1g+Tg
	yghJRUv8RYravNtJiZMBqSmcVBX6Xfs9/cre1ri2/H5pdmWD1YZ305QZnMZ1WDM6f9pg=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1v9y2s-0004EV-CC;
	Sat, 18 Oct 2025 03:55:55 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1v9y2q-0004E6-9j
 for linux1394-devel@lists.sourceforge.net;
 Sat, 18 Oct 2025 03:55:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dm4H81ZdYiAnyPguz4Bgqq3z9wTH09vJcCXCWxJQJ8Y=; b=PGkctd069tmKmUrafq05Hkmcy8
 5oI3qDIbQ9qm2Pnj0QphnPKXIqYuhF4z3ZAJVTP1FaQm3Q4Or9eeZXM/KePzjKAQ1U25RbzijA26K
 f1KaBQ02zyddvUDC/ftCO3cffhuTHCMiV2BvNVrzB6QIYCiOMYJ2oSK25gjx7pOE3mYg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dm4H81ZdYiAnyPguz4Bgqq3z9wTH09vJcCXCWxJQJ8Y=; b=fvkRs0H6E3iQqrO3ibWCBw6v63
 xM2YyCpK/uHM52WMtoBEOhCGxy+t7tDwoMZ1/RQ64EXc4lUzvBP2PlduminwYnMLtnWvcz8Ixcw62
 ca1iPDo2DO0AaIrPfj+ULQHhED5s83ILJXUaYBdwGQAHkqRnrQRFizafdJ7s2y7FuO2s=;
Received: from fhigh-b4-smtp.messagingengine.com ([202.12.124.155])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1v9y2q-0004sQ-J8 for linux1394-devel@lists.sourceforge.net;
 Sat, 18 Oct 2025 03:55:53 +0000
Received: from phl-compute-01.internal (phl-compute-01.internal [10.202.2.41])
 by mailfhigh.stl.internal (Postfix) with ESMTP id 168F97A0147;
 Fri, 17 Oct 2025 23:55:42 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-01.internal (MEProxy); Fri, 17 Oct 2025 23:55:42 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1760759741; x=
 1760846141; bh=dm4H81ZdYiAnyPguz4Bgqq3z9wTH09vJcCXCWxJQJ8Y=; b=W
 J3eawXd2Sn10e3oevbtewhdQX6zvoVsPhvoppgBu2JraxuK6yD/5ss6xxTt/VymR
 pnGD1aUUlDnrdZKSOPrFyTOJLIBbg3JiqGywmwY3r/ETfVkrdy3MwBbSVJP8sibm
 KL2WCzPfpZDTBAVg4jUxOpYlCN6+2En793B7Es2twZwe0/rgRNv7808eRDeMuR3U
 C02HL7VvN1vBSbbngvs87K2Dqecrb39m/CEW6Hudx87ldca1V0s1g9OIWL1Hb8rp
 XqtsZiORqw9v36UrkGYPLCD2LB8nMw/qCn1ZuYkh84wAVpt3/OvI3FxAZvgueZTC
 edSdyrKYYwaWi0hZzR9+g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm2; t=1760759741; x=1760846141; bh=d
 m4H81ZdYiAnyPguz4Bgqq3z9wTH09vJcCXCWxJQJ8Y=; b=vXKD/SafGXwIqQQDF
 TxTQsOsYXAUc1WhnBY7LAanehod+cIAthAHWczatomusNC2a0ptrd/JbCt48N8uU
 l+kDrUxveySkz7p5d+H9MtUfxR7kAlZO7hQtubCa5xWKZ1E4N7O08dLFlSLW/inQ
 0j+8pGxqJ1nArssRHDRs0lxsBVpsDKjf71joWWVlRWB8B8EAszcI0sNTCOyFhbaS
 vkULi5F/KnSZ3yV+GjbhM9CAflO9avugusf6D4iXaG136q6m1uaGqID3nwnpgbZc
 sQ1DGCdLC13ncRvAF7qx4iucmHS68gdIxMz37cKfbqxVD0ntHN4lSVOUeh3cn2tW
 xwamg==
X-ME-Sender: <xms:vQ_zaFWmLUJjeLmb49thVloP28bp-xaDcP64tpB8O34ng6k-lLwRIw>
 <xme:vQ_zaFuxzUcprYJwKASP3vp3bkSLHZKkD92e7RwmB_UsWMV1mno_vVve-7qy2xYCR
 dEspVxXlBIUSQoZNoS_j6P1EfsyYfucWz7nSMfziB2n9k6Bst7DX94>
X-ME-Received: <xmr:vQ_zaJVPozdTOAyjXkvp9HvfeF3IBaglWryWRRLp0HKrFBj6VJHosk4-4_1fZUxx-KahtU0TpCD_RoEckjPyG_IyzZ15FJLbuI4apxNTGbBetA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggddufedutddvucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgjeeuvd
 fguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushhtvghr
 ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrg
 hkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopeefpdhmohguvgepshhmthhpohhu
 thdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlsehlihhsthhsrdhsohhurh
 gtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgv
 rhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplhhinhhugidqshhouhhnugesvhhgvg
 hrrdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:vQ_zaAmBk2ArH3ksVWMGGJur7gSoSKk-PAu6dapu3Rpb7_JE5p8LBQ>
 <xmx:vQ_zaKYU8tS1WLAQ1J-IOyLe-2wJuSyp-RjuoAkERXZlF4eihyzMVw>
 <xmx:vQ_zaLP8x_8ewuMxy6a6E9wXe57yuJWsQZLMLGGW1Xanq80FOba4CA>
 <xmx:vQ_zaPafdHGI75E7B62ogdVZpSCzlNzqLeT7cSPC8zhvXlkzk7W60A>
 <xmx:vQ_zaBLipWL0OwlR-GsdxtPIDJQwdJX8w36WMAfO5nSywGZFYWTJpK96>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 17 Oct 2025 23:55:40 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 3/4] firewire: core: handle device quirk of TASCAM
 FW-1884/FW-1804/FW-1082
Date: Sat, 18 Oct 2025 12:55:31 +0900
Message-ID: <20251018035532.287124-4-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251018035532.287124-1-o-takashi@sakamocchi.jp>
References: <20251018035532.287124-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  TASCAM FW-1884/FW-1804/FW-1082 is too lazy to repspond to
 asynchronous request at S400. The asynchronous transaction often results in
 timeout. This is a problematic quirk. This commit adds support for the quirk.
 When identifying the new quirk flag, then the transaction speed is configured
 at S200. 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1v9y2q-0004sQ-J8
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
Cc: linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

TASCAM FW-1884/FW-1804/FW-1082 is too lazy to repspond to asynchronous
request at S400. The asynchronous transaction often results in timeout.
This is a problematic quirk.

This commit adds support for the quirk. When identifying the new quirk
flag, then the transaction speed is configured at S200.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-device.c | 18 +++++++++++++++++-
 include/linux/firewire.h       |  3 +++
 2 files changed, 20 insertions(+), 1 deletion(-)

diff --git a/drivers/firewire/core-device.c b/drivers/firewire/core-device.c
index 6a5740ed4934..1674de477852 100644
--- a/drivers/firewire/core-device.c
+++ b/drivers/firewire/core-device.c
@@ -571,6 +571,14 @@ static const struct entry_match motu_audio_express_matches[] = {
 	{ 8, 0x17104800 },
 };
 
+static const struct entry_match tascam_fw_series_matches[] = {
+	{ 1, 0x0300022e },
+	{ 3, 0x8d000006 },
+	{ 4, 0xd1000001 },
+	{ 6, 0x1200022e },
+	{ 8, 0xd4000004 },
+};
+
 static int detect_quirks_by_root_directory(const u32 *root_directory, unsigned int length)
 {
 	static const struct {
@@ -583,6 +591,11 @@ static int detect_quirks_by_root_directory(const u32 *root_directory, unsigned i
 			.matches = motu_audio_express_matches,
 			.match_count = ARRAY_SIZE(motu_audio_express_matches),
 		},
+		{
+			.quirk = FW_DEVICE_QUIRK_UNSTABLE_AT_S400,
+			.matches = tascam_fw_series_matches,
+			.match_count = ARRAY_SIZE(tascam_fw_series_matches),
+		},
 	};
 	int quirks = 0;
 	int i;
@@ -761,7 +774,10 @@ static int read_config_rom(struct fw_device *device, int generation)
 	// Just prevent from torn writing/reading.
 	WRITE_ONCE(device->quirks, quirks);
 
-	speed = device->node->max_speed;
+	if (unlikely(quirks & FW_DEVICE_QUIRK_UNSTABLE_AT_S400))
+		speed = SCODE_200;
+	else
+		speed = device->node->max_speed;
 
 	// Determine the speed of
 	//   - devices with link speed less than PHY speed,
diff --git a/include/linux/firewire.h b/include/linux/firewire.h
index f1d8734c0ec6..6143b7d28eac 100644
--- a/include/linux/firewire.h
+++ b/include/linux/firewire.h
@@ -179,6 +179,9 @@ enum fw_device_quirk {
 
 	// MOTU Audio Express transfers acknowledge packet with 0x10 for pending state.
 	FW_DEVICE_QUIRK_ACK_PACKET_WITH_INVALID_PENDING_CODE = BIT(2),
+
+	// TASCAM FW-1082/FW-1804/FW-1884 often freezes when receiving S400 packets.
+	FW_DEVICE_QUIRK_UNSTABLE_AT_S400 = BIT(3),
 };
 
 enum fw_device_state {
-- 
2.51.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
