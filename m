Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D0CABF0F64
	for <lists+linux1394-devel@lfdr.de>; Mon, 20 Oct 2025 13:58:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=sJUS6h8cBlQk8CbQzj9fNkXv1+HNA4F37WTFKvmLKpE=; b=F4H4ZRWBqvLgWqHRVmloYqhKEw
	fd5+ieJkZ2gpaE6V+48RYIkUr5U3ZW2dRAprJj+veicAceENGY8Z5nTfkoz83foVnk3DdFcWrnp/Z
	qsDYMek//5A8wGJ8FfVsz0uhbeQ/UiYKM5Vs9WVtvsuybZstlg37YRTi/QQSWXCzBWTA=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1vAoWx-0003rl-JC;
	Mon, 20 Oct 2025 11:58:27 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1vAoWw-0003rb-7x
 for linux1394-devel@lists.sourceforge.net;
 Mon, 20 Oct 2025 11:58:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ww9DvCfxJ93mFFiHtNCtI5RjcFbBSgRKT6N64U8sLJY=; b=Q0lLuTWYOUMW8ljKprpx68ZzN8
 QQY+LDcyqlmaVsQHPtwlrWCDsyO+svV8pSVlhWrbTodNFl4YgyelkxB32w2bWR46vX2PjM6qiIE+E
 NtzCO2YUjlxVF0XmHwAHtueo7efzvqJ5+Cgr7S2NWJhFa3dMj2ZX5INvBKg7vA/aqoK0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Ww9DvCfxJ93mFFiHtNCtI5RjcFbBSgRKT6N64U8sLJY=; b=M
 ef/cN00+jFUCYH4qnePI4kAvmE4wTjvw4RqxsQJKDwFM90r0wYKbRFsBBfvXCAIbJbzsim2A5ZXE3
 8RApLD+IzlTHPxbp1qMP+BxwfCONr7HlZml0bUoM/ToQWrUXjc8TQaW9dc5ybxmtRMeErUx9scwan
 0eHuIPuVkeLryaTU=;
Received: from fout-a5-smtp.messagingengine.com ([103.168.172.148])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vAoWv-0001BV-AI for linux1394-devel@lists.sourceforge.net;
 Mon, 20 Oct 2025 11:58:26 +0000
Received: from phl-compute-05.internal (phl-compute-05.internal [10.202.2.45])
 by mailfout.phl.internal (Postfix) with ESMTP id 97C24EC02E2;
 Mon, 20 Oct 2025 07:58:14 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-05.internal (MEProxy); Mon, 20 Oct 2025 07:58:14 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm2; t=1760961494; x=1761047894; bh=Ww9DvCfxJ9
 3mFFiHtNCtI5RjcFbBSgRKT6N64U8sLJY=; b=KkCHc70t1mgu3nMMGEfvIM0gIe
 HmVPe+7wdWD0rlxBalyrB7ui1NT+yEKishMnun/sHHGFGYuSNArr71nk+h7P+Fa5
 gFMxqNq2QkEW/4dtgFYRoL8YDlmJwG/nfrL6heRMqbwC1QDjLcdqEcXDBHEOk+UD
 MfAOndw5/AgqmCDAhKcdBhi3hjccQM6Xi8HDkpaLyH1qVu4nVT+4dP+6offJkWek
 /5GbbQmtNha3bDSJvoH+G5O3Ysx90zw57Vy4Ss+MmcWCVBr6fX8aMuEstfMZ8EJK
 9VOepqPdcjaBLhNjF3BdgljnT+2CKzJ8DUTaY7yiI1xQAvf33p5OWKyqXYvw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
 1760961494; x=1761047894; bh=Ww9DvCfxJ93mFFiHtNCtI5RjcFbBSgRKT6N
 64U8sLJY=; b=pUKEzKghSifSQJs8BJXSEnSskU/UK9uojnvGTZrryBagWXR4NP8
 PHQmBfD1QTa1LCKmaLuSIx+mX3FZ7i+BrswGdL05vv0sd178OT4r/JSN5MuWvT4e
 mGhDR1jY4ptlss00Y8SGkn1BWzjzEcfjQLbv1CxODKCfJOZfX+7Ms3Ktcotn6Gnl
 RrD8OSdICckzWEZndu/KX5mY6y7Y4d1XslaVkEDTfTf+twAGHKfygMavxeoyIf/+
 KF5tSHFSkbvXf2oU0k/qCctcPs0nTH1rtmboEvtRo8l2561GEh651ayDIFy4yOBd
 hYZx3YJvX7dQASGKRwYTonqTz4Icl1WkIag==
X-ME-Sender: <xms:1iP2aHqqyTsbJWXhtkH69dJe-78IllZLRTxMXEnecsHAgJYCGXrVAg>
 <xme:1iP2aPl6WcCsitzEVwlCrYqdWbAGg5wYUeOfIKFFQOsf27q3vq-pICS6QGLSNvNsV
 1Jbb4G4XCDj-wAMYQKoYESSyXkd0Xmeopp-Alk-bKScmjEZyV-u3u0>
X-ME-Received: <xmr:1iP2aLyP538O7lnNRV-9NHMjS36khcpAVQW3vZjJG60jFJ--RwYiOiMFb83Ix3hlPhb-idcEbDgdWUWbggLrnd3R-r5eHnZzMPG7FkYY00Dx>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggddufeejjeeiucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffoggfgsedtkeertdertd
 dtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghshhhi
 sehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeffvdeuleffveekud
 fhteejudffgefhtedtgfeutdfgvdfgueefudehveehveekkeenucevlhhushhtvghrufhi
 iigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrg
 hmohgttghhihdrjhhppdhnsggprhgtphhtthhopedvpdhmohguvgepshhmthhpohhuthdp
 rhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlsehlihhsthhsrdhsohhurhgtvg
 hfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgvrhdr
 khgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:1iP2aHkGo6cgYWqDnkiRWm6kepPwmFP2sRoMDJID3vhGrsQfKGLp-A>
 <xmx:1iP2aEcqW5mqSURk2TKLMMogdzaGqk9rKWOnH7apNapd_dkVHYpbjA>
 <xmx:1iP2aNrBEnF7JgFzZO0blPcTx2QyP0DpBARMm5tE4tqKA-b6xCOnWA>
 <xmx:1iP2aC5unPTOy87JzbZn_muOwHwM_XKpACvsj2lzjlyXZDBaSNMu8Q>
 <xmx:1iP2aGdG4J73XGDqZyQTm35zaDr2wpGZBWnJZvo1QPziuAlgdM31yUI1>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 20 Oct 2025 07:58:13 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH] firewire: core: use cleanup function to release cached
 configuration ROM
Date: Mon, 20 Oct 2025 20:58:10 +0900
Message-ID: <20251020115810.92839-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  When returning from read_config_rom() function, the allocated
 buffer and the previous buffer for configuration ROM should be released.
 The cleanup function is useful in the case. This commit uses the cleanup
 function to remove goto statements. 
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
X-Headers-End: 1vAoWv-0001BV-AI
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

When returning from read_config_rom() function, the allocated buffer and
the previous buffer for configuration ROM should be released. The cleanup
function is useful in the case.

This commit uses the cleanup function to remove goto statements.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-device.c | 34 ++++++++++++----------------------
 1 file changed, 12 insertions(+), 22 deletions(-)

diff --git a/drivers/firewire/core-device.c b/drivers/firewire/core-device.c
index 1674de477852..9b0080397154 100644
--- a/drivers/firewire/core-device.c
+++ b/drivers/firewire/core-device.c
@@ -653,8 +653,8 @@ static int read_rom(struct fw_device *device, int generation, int speed, int ind
 static int read_config_rom(struct fw_device *device, int generation)
 {
 	struct fw_card *card = device->card;
-	const u32 *old_rom, *new_rom;
-	u32 *rom, *stack;
+	const u32 *new_rom, *old_rom __free(kfree) = NULL;
+	u32 *stack, *rom __free(kfree) = NULL;
 	u32 sp, key;
 	int i, end, length, ret, speed;
 	int quirks;
@@ -673,7 +673,7 @@ static int read_config_rom(struct fw_device *device, int generation)
 	for (i = 0; i < 5; i++) {
 		ret = read_rom(device, generation, speed, i, &rom[i]);
 		if (ret != RCODE_COMPLETE)
-			goto out;
+			return ret;
 		/*
 		 * As per IEEE1212 7.2, during initialization, devices can
 		 * reply with a 0 for the first quadlet of the config
@@ -682,10 +682,8 @@ static int read_config_rom(struct fw_device *device, int generation)
 		 * harddisk).  In that case we just fail, and the
 		 * retry mechanism will try again later.
 		 */
-		if (i == 0 && rom[i] == 0) {
-			ret = RCODE_BUSY;
-			goto out;
-		}
+		if (i == 0 && rom[i] == 0)
+			return RCODE_BUSY;
 	}
 
 	quirks = detect_quirks_by_bus_information_block(rom);
@@ -712,15 +710,13 @@ static int read_config_rom(struct fw_device *device, int generation)
 		 */
 		key = stack[--sp];
 		i = key & 0xffffff;
-		if (WARN_ON(i >= MAX_CONFIG_ROM_SIZE)) {
-			ret = -ENXIO;
-			goto out;
-		}
+		if (WARN_ON(i >= MAX_CONFIG_ROM_SIZE))
+			return -ENXIO;
 
 		/* Read header quadlet for the block to get the length. */
 		ret = read_rom(device, generation, speed, i, &rom[i]);
 		if (ret != RCODE_COMPLETE)
-			goto out;
+			return ret;
 		end = i + (rom[i] >> 16) + 1;
 		if (end > MAX_CONFIG_ROM_SIZE) {
 			/*
@@ -744,7 +740,7 @@ static int read_config_rom(struct fw_device *device, int generation)
 		for (; i < end; i++) {
 			ret = read_rom(device, generation, speed, i, &rom[i]);
 			if (ret != RCODE_COMPLETE)
-				goto out;
+				return ret;
 
 			if ((key >> 30) != 3 || (rom[i] >> 30) < 2)
 				continue;
@@ -804,25 +800,19 @@ static int read_config_rom(struct fw_device *device, int generation)
 
 	old_rom = device->config_rom;
 	new_rom = kmemdup(rom, length * 4, GFP_KERNEL);
-	if (new_rom == NULL) {
-		ret = -ENOMEM;
-		goto out;
-	}
+	if (new_rom == NULL)
+		return -ENOMEM;
 
 	scoped_guard(rwsem_write, &fw_device_rwsem) {
 		device->config_rom = new_rom;
 		device->config_rom_length = length;
 	}
 
-	kfree(old_rom);
-	ret = RCODE_COMPLETE;
 	device->max_rec	= rom[2] >> 12 & 0xf;
 	device->cmc	= rom[2] >> 30 & 1;
 	device->irmc	= rom[2] >> 31 & 1;
- out:
-	kfree(rom);
 
-	return ret;
+	return RCODE_COMPLETE;
 }
 
 static void fw_unit_release(struct device *dev)

base-commit: dbd0cf204fe6ba7ba226153d1d90369019b90164
-- 
2.51.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
