Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 46813BEC6A9
	for <lists+linux1394-devel@lfdr.de>; Sat, 18 Oct 2025 05:56:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jmmlKr0QY12G7B06TmK7ddQgceHrxSFIotP3ctmu5gk=; b=Tk9GC0m4x3tBThQsKaFEz84pq+
	JJ3FN6JlDcIH/l4+/+rsQVhNRTefqsvgVCepCp+CliEPwPK7nzdEfZixhNRL/xdLLf70O13uGaAhu
	vC5ddwPQGfhLDwzN7cO71E02eZwdWV0w+37wtyJJses2l7b/fIUxD3jvABP/RYD8As3w=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1v9y2n-0004Df-3C;
	Sat, 18 Oct 2025 03:55:49 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1v9y2k-0004DJ-JX
 for linux1394-devel@lists.sourceforge.net;
 Sat, 18 Oct 2025 03:55:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yGRLVQuJIrWSADXY2lmb05uJei7Ja3Kf7eceuATqL44=; b=CMErSWoXTob4r6ElHFNnjc7CIH
 TpsXp1RSeNQFPgjhseqN4MQHSd/OmUFJPQ8+fn51nDhUU/+510a0/DKG3bzdJyliXLOpBmFThUlsG
 DuxVtV90iM1e1Nw5hAumFw2cuqG2Q5BrcdJNxYiir3HzHoCyNVpsvMzJOX1xnxkhi8W8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yGRLVQuJIrWSADXY2lmb05uJei7Ja3Kf7eceuATqL44=; b=FEZEUyV3NMK5qTjeILHQydKKeq
 JhMKZG9eBchT4cwHv9A831jhkG/GomLJ+kYSdLsS+xdWs6k4XkWNAPh+iuk9l5GcBY7jucqpeTB9G
 urlX1YobU44mm53tuxrhJ94Qhe+joCD6rkPtZ8+HmLjJVo7Mepy/BeaJujePY42IVLK4=;
Received: from fhigh-b4-smtp.messagingengine.com ([202.12.124.155])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1v9y2k-0004s6-1O for linux1394-devel@lists.sourceforge.net;
 Sat, 18 Oct 2025 03:55:47 +0000
Received: from phl-compute-01.internal (phl-compute-01.internal [10.202.2.41])
 by mailfhigh.stl.internal (Postfix) with ESMTP id 5A3647A0140;
 Fri, 17 Oct 2025 23:55:40 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-01.internal (MEProxy); Fri, 17 Oct 2025 23:55:40 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1760759740; x=
 1760846140; bh=yGRLVQuJIrWSADXY2lmb05uJei7Ja3Kf7eceuATqL44=; b=a
 sld1cgwe3nm/t5hVjfdXsZRcUZKW7J7KiUmfzWaFGfE/9VFELTRyurBiHvUojG8N
 Tszm0X2kAxlcHhs2/19cV2SF/31X+12y5gZZV+UmpO+qpKkpHVN91fo/Vg1N9UEZ
 aPK/fVcYBeSNFMLSQOnJmfggnhJ43LNIDP5DrlHoHAFnDS5eCEQH7jSyPc1h46m/
 pgA8VgBeYp5SeLTLIntzFITRXbJBYCVfyIh7skO7Fs2Q80vWvTyliYmRk1g9nQL3
 ekezbiGddkP3k2Zfn3NJsuZ1CGW8oEdQ6ZNI0mNrO+WkDvxqgramKdxl7HsKzMhN
 JFy/ZpH+dhobvL0APM4yg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm2; t=1760759740; x=1760846140; bh=y
 GRLVQuJIrWSADXY2lmb05uJei7Ja3Kf7eceuATqL44=; b=WiafUUXt0pTbhRXpF
 Li3sQ5MvsqLO+w43amhexhcfBVG/5IxTMMkBWvZ1M58Djv23dEi0VA2sM4MCsODq
 WI6p/i8wfuHtT4iJiwcfkB1eWzxrF0Yc43+3ipJNgtmldnkWt+1HjpwjXAx+OGo/
 7be8XnViIwW/+lz4cvpc1RKIkinGcGtuoLI/h0/W0IXgsCdDTKwHjM4DWbZatf5X
 pmujMaxu7UYnjFxIdBGzazNI1cB309PsNaARbaN54/D+71aHfzGmBp59FKENFjgA
 6k3HaePPRBFwHMK50ed9YHfwD251xV4lsHXzIy3YK4NC92b1qkOIAzxprTVZ4jrE
 n2tdw==
X-ME-Sender: <xms:uw_zaIw1qdvdAQepF7JvSy2cjwQ80CohLnxys00XxGPPOicb9c8swg>
 <xme:uw_zaMYVyVwTEvtEO1OzB0hch4pi0YUkUjGmL99Dn4um8HAJuGS6SmOMo0G_gxSjV
 Zd8ZBd_ZYkBzeNOE3_MLfMf8b9SBuuRrAvGbjNQh71WywXhPqJHk0w>
X-ME-Received: <xmr:uw_zaCQziV-Ggo3NKlGokP5kA8BT2NYUa3cEI5WQSUXNM-gqmtLyeI6FyP5NdDsr-WH0UKf4N7k6KiUCPTEC13cAixNWcYFhW26BJSO3pILezg>
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
X-ME-Proxy: <xmx:uw_zaOzeu7Gq35gDSUYytUnVi6MxvDFuSAnQ_q0FQgxcqS01gZUKnw>
 <xmx:vA_zaE0AwA5Zkzz9Hw3Lkg0EoNocnogLY5RJoV-QJ0Cw5wPzyP1QYQ>
 <xmx:vA_zaM5cIa4vz_bVWg2eZCLqVTCGLDAgEtJ-f3pkwHUotMbvF6tsmg>
 <xmx:vA_zaHXNvvwUx495HNrrb601Yvk80glJQ8hnnSzCcqBzC_CCncwoNw>
 <xmx:vA_zaBVQSZ-QQbms4nbWPU6IAlczDBpZoqzYuFAc_q1hEP9fwepFxzlm>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 17 Oct 2025 23:55:38 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 2/4] firewire: core: determine transaction speed after
 detecting quirks
Date: Sat, 18 Oct 2025 12:55:30 +0900
Message-ID: <20251018035532.287124-3-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251018035532.287124-1-o-takashi@sakamocchi.jp>
References: <20251018035532.287124-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Current implementation determines the maximum transaction
 speed supported by the target device after reading bus information block of
 configuration ROM. The read operations for root directory block ar [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1v9y2k-0004s6-1O
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

Current implementation determines the maximum transaction speed supported
by the target device after reading bus information block of configuration
ROM. The read operations for root directory block are then performed at
the determined speed. However, some devices have quirks that cause issues
when transactions are performed at the determined speed.

In the first place, all devices are required to support the lowest speed
(S100) and must respond successfully to any read request within the
configuration ROM space. Therefore it is safe to postpone speed
determination until the entire configuration ROM has been read.

This commit moves the speed determination after reading root directory.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-device.c | 53 ++++++++++++++++------------------
 1 file changed, 25 insertions(+), 28 deletions(-)

diff --git a/drivers/firewire/core-device.c b/drivers/firewire/core-device.c
index c698d4ced7d7..6a5740ed4934 100644
--- a/drivers/firewire/core-device.c
+++ b/drivers/firewire/core-device.c
@@ -680,32 +680,6 @@ static int read_config_rom(struct fw_device *device, int generation)
 	// Just prevent from torn writing/reading.
 	WRITE_ONCE(device->quirks, quirks);
 
-	speed = device->node->max_speed;
-
-	/*
-	 * Determine the speed of
-	 *   - devices with link speed less than PHY speed,
-	 *   - devices with 1394b PHY (unless only connected to 1394a PHYs),
-	 *   - all devices if there are 1394b repeaters.
-	 * Note, we cannot use the bus info block's link_spd as starting point
-	 * because some buggy firmwares set it lower than necessary and because
-	 * 1394-1995 nodes do not have the field.
-	 */
-	if ((rom[2] & 0x7) < speed || speed == SCODE_BETA || card->beta_repeaters_present) {
-		u32 dummy;
-
-		/* for S1600 and S3200 */
-		if (speed == SCODE_BETA)
-			speed = card->link_speed;
-
-		while (speed > SCODE_100) {
-			if (read_rom(device, generation, speed, 0, &dummy) ==
-			    RCODE_COMPLETE)
-				break;
-			--speed;
-		}
-	}
-
 	/*
 	 * Now parse the config rom.  The config rom is a recursive
 	 * directory structure so we parse it using a stack of
@@ -782,13 +756,36 @@ static int read_config_rom(struct fw_device *device, int generation)
 			length = i;
 	}
 
-	device->max_speed = speed;
-
 	quirks |= detect_quirks_by_root_directory(rom + ROOT_DIR_OFFSET, length - ROOT_DIR_OFFSET);
 
 	// Just prevent from torn writing/reading.
 	WRITE_ONCE(device->quirks, quirks);
 
+	speed = device->node->max_speed;
+
+	// Determine the speed of
+	//   - devices with link speed less than PHY speed,
+	//   - devices with 1394b PHY (unless only connected to 1394a PHYs),
+	//   - all devices if there are 1394b repeaters.
+	// Note, we cannot use the bus info block's link_spd as starting point because some buggy
+	// firmwares set it lower than necessary and because 1394-1995 nodes do not have the field.
+	if ((rom[2] & 0x7) < speed || speed == SCODE_BETA || card->beta_repeaters_present) {
+		u32 dummy;
+
+		// for S1600 and S3200.
+		if (speed == SCODE_BETA)
+			speed = card->link_speed;
+
+		while (speed > SCODE_100) {
+			if (read_rom(device, generation, speed, 0, &dummy) ==
+			    RCODE_COMPLETE)
+				break;
+			--speed;
+		}
+	}
+
+	device->max_speed = speed;
+
 	old_rom = device->config_rom;
 	new_rom = kmemdup(rom, length * 4, GFP_KERNEL);
 	if (new_rom == NULL) {
-- 
2.51.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
