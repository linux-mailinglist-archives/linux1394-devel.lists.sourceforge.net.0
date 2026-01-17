Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B3BCD38F15
	for <lists+linux1394-devel@lfdr.de>; Sat, 17 Jan 2026 15:29:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HpEPO60invmkHTpq7FC63VESdJSCtZEHDHV4JZL2veQ=; b=a2/Ec1ka3sFnMxZusf1fPUT8wg
	iWBkpzewvl7bciBNWe4oQmcHYXcMOgZdwKna+4z0zekXpgErgSAyAVsqvCly7+e4FjuCIzA3IpgUI
	tZQrLmX45YZya54ONCoBNuZ5sd1xPx66yzi6HBPjkjgQQYoBqcSXYyPhBQI1P70wsQbY=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1vh7IL-0005me-DC;
	Sat, 17 Jan 2026 14:28:54 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1vh7IJ-0005mL-Vl
 for linux1394-devel@lists.sourceforge.net;
 Sat, 17 Jan 2026 14:28:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EpU7s6MYPGtj7LZ20r796f5THbt7CSmvMGny3xKCmVQ=; b=HqaE8EjvnV+fLic7xuGtpRw4rb
 l7u+B28acMpPPvSnz9Bs6azqpBYfpGeC3OKUM9fPbW1VAHrd4ikAjgs16FukFOOD3tHyVPPJCcj+x
 ZcsvWsmKuLYNv90X+na2fazRKEC40GULJe/ZeYzdrnvW25Q1A3TH/XnK1jbU4zv1LsDU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EpU7s6MYPGtj7LZ20r796f5THbt7CSmvMGny3xKCmVQ=; b=G5GuSnVkXNSVAUyofA37I+uv+p
 Cv0J4mE+mAIvresOIlk2mdO8Ju7YXig7kLXRKp0PcOFr97Vzhpr5yauU7H3WnjBrUUzq5Nnuw1tw4
 +nNmOedQqkCQkWwvjpNO5V8SQztiU7acCbMfmjN6SeD+JhdZ4rGKLKNo7zaiU+bbALBM=;
Received: from fout-b6-smtp.messagingengine.com ([202.12.124.149])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vh7IK-0001Wu-7O for linux1394-devel@lists.sourceforge.net;
 Sat, 17 Jan 2026 14:28:52 +0000
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
 by mailfout.stl.internal (Postfix) with ESMTP id AF16B1D002EB;
 Sat, 17 Jan 2026 09:28:41 -0500 (EST)
Received: from phl-frontend-04 ([10.202.2.163])
 by phl-compute-06.internal (MEProxy); Sat, 17 Jan 2026 09:28:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1768660121; x=
 1768746521; bh=EpU7s6MYPGtj7LZ20r796f5THbt7CSmvMGny3xKCmVQ=; b=L
 YJ+Kf2CFW42n3qvT5ItPotE/Rm1ae1ymqS8yXwATdJNTrmCTGmxNUy9CZwe0frgm
 UhCKOamq8hBSe00V0BWG+Ui29XfV3krb3szzKW6jES8yxsd8dDwFqiQFywU2hL7u
 ELovGAYdUuJtE4rOgLRsXdGUYUpOeORqHxnGbN6idW9uf6XbEwc98dL6cHyfg/0q
 J4Spr2HjihvWC/r9kDUmM4jhi+Lhmeaj12VaEq7hLQEKsDB0YP88DUPdiZdjBfce
 lveB1qNv3vFerEcjBVyVGuuvNaEnrEajVxqmIM+olSVY1DSeffLggLWGvCiBPt7h
 HSreNGBHxaLEwMynAAU0g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm2; t=1768660121; x=1768746521; bh=E
 pU7s6MYPGtj7LZ20r796f5THbt7CSmvMGny3xKCmVQ=; b=zcW3RvX+fJg9w1fdQ
 d/DiNY7ROkEi23J2Q1iS50dIenLUfcrF8jbqUEUAWOJCn4TI+5XcbWYDTwmM1DWB
 R0Vb2PCu1/RdLhaiUYZQjnxm6Keylss7WbdahGUDOtO7Vc/SWq0+g9eZ9Za1FOup
 85MnFqj2b8hLnbKc1qS1i8fI6pAGYqd2rxRZsvRj0PMbiNEn3jq8cYF8vNBxaZFD
 PZFscUrhIEt4B09fNmUZY1/zt0w98+deUU48sOG004dt+paX8qWshfEESIW2icCo
 Cee2zqeVDk5xxEs1nk9npNLs/7wrLWwI8Y3aAwB8HfAnMUJMP60yy2OmKG7qcZW/
 EcLdw==
X-ME-Sender: <xms:mZxrafo1DD4escYfgiBwb-jOCoHgU82qnK2N-Qr1YD6SZ-zEra60PA>
 <xme:mZxraZwYu_z2-7oVlWwp1Mro-pTW4R9Z74sltaooNTxRvulWYz3hzOkQs9bB7Fhq3
 aj61VZmzwqKyw8yq2Dqq0nONGZ-lvOzcQbT1yZ3NTDl-hGiMGU4Nzc>
X-ME-Received: <xmr:mZxraUKsaBlkOvVM00At2CMjDdM2usnfzEa0Ms177IGmxMR-B4CFu-KOArjNi0XIqZz5odXY01ij4hbdooy3UNUFTrSwOKU0mKvIG9zD6TBiDA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddufedvtdehucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgjeeuvd
 fguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushhtvghr
 ufhiiigvpedvnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrg
 hkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopeefpdhmohguvgepshhmthhpohhu
 thdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlsehlihhsthhsrdhsohhurh
 gtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgv
 rhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplhhinhhugidqshhouhhnugesvhhgvg
 hrrdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:mZxrabJkW0hfNXZWuiG2ND1JsW3JY8lAcJaB-lumpn9OlJEnTJnUUw>
 <xmx:mZxraZvZY4nZNaj5Cc0AUvAsloqx9IDCzKrYFhJ2h4Znb_ENqD9ZpA>
 <xmx:mZxraQT3CBPu6Dx0huNuZPSbcMBb7jYhze_Aa-oTlf6WvGp-bP1XmQ>
 <xmx:mZxraXP6rwWmXuzKGS-gZhzHXFAzdbhiSAz8yQDi0Un7nmhfypOmjg>
 <xmx:mZxraRu2xGPeZYiVa9MgbNqiHUcr15Q6176tKkPJmXQgzLvcmBd8Y26U>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 17 Jan 2026 09:28:40 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 9/9] ALSA: firewire: remove PCM buffer size constraint from
 isoc context header
Date: Sat, 17 Jan 2026 23:28:22 +0900
Message-ID: <20260117142823.440811-10-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260117142823.440811-1-o-takashi@sakamocchi.jp>
References: <20260117142823.440811-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In the IEC 61883-1/6 packet streaming engine, the isochronous
 context header stores CIP headers. Previously, the header storage was limited
 to PAGE_SIZE, which constrained the maximum PCM buffer size. 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
X-Headers-End: 1vh7IK-0001Wu-7O
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

In the IEC 61883-1/6 packet streaming engine, the isochronous context
header stores CIP headers. Previously, the header storage was limited to
PAGE_SIZE, which constrained the maximum PCM buffer size.

There is a function with configurable header size. Now the limitation is
removed.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 sound/firewire/amdtp-stream.c | 31 +++++++++----------------------
 1 file changed, 9 insertions(+), 22 deletions(-)

diff --git a/sound/firewire/amdtp-stream.c b/sound/firewire/amdtp-stream.c
index 5cdc34877fc1..223c880af802 100644
--- a/sound/firewire/amdtp-stream.c
+++ b/sound/firewire/amdtp-stream.c
@@ -191,8 +191,6 @@ int amdtp_stream_add_pcm_hw_constraints(struct amdtp_stream *s,
 					struct snd_pcm_runtime *runtime)
 {
 	struct snd_pcm_hardware *hw = &runtime->hw;
-	unsigned int ctx_header_size;
-	unsigned int maximum_usec_per_period;
 	int err;
 
 	hw->info = SNDRV_PCM_INFO_BLOCK_TRANSFER |
@@ -212,21 +210,6 @@ int amdtp_stream_add_pcm_hw_constraints(struct amdtp_stream *s,
 	hw->period_bytes_max = hw->period_bytes_min * 2048;
 	hw->buffer_bytes_max = hw->period_bytes_max * hw->periods_min;
 
-	// Linux driver for 1394 OHCI controller voluntarily flushes isoc
-	// context when total size of accumulated context header reaches
-	// PAGE_SIZE. This kicks work for the isoc context and brings
-	// callback in the middle of scheduled interrupts.
-	// Although AMDTP streams in the same domain use the same events per
-	// IRQ, use the largest size of context header between IT/IR contexts.
-	// Here, use the value of context header in IR context is for both
-	// contexts.
-	if (!(s->flags & CIP_NO_HEADER))
-		ctx_header_size = IR_CTX_HEADER_SIZE_CIP;
-	else
-		ctx_header_size = IR_CTX_HEADER_SIZE_NO_CIP;
-	maximum_usec_per_period = USEC_PER_SEC * PAGE_SIZE /
-				  CYCLES_PER_SECOND / ctx_header_size;
-
 	// In IEC 61883-6, one isoc packet can transfer events up to the value
 	// of syt interval. This comes from the interval of isoc cycle. As 1394
 	// OHCI controller can generate hardware IRQ per isoc packet, the
@@ -239,9 +222,10 @@ int amdtp_stream_add_pcm_hw_constraints(struct amdtp_stream *s,
 	// Due to the above protocol design, the minimum PCM frames per
 	// interrupt should be double of the value of syt interval, thus it is
 	// 250 usec.
+	// There is no reason, but up to 250 msec to avoid consuming resources so much.
 	err = snd_pcm_hw_constraint_minmax(runtime,
 					   SNDRV_PCM_HW_PARAM_PERIOD_TIME,
-					   250, maximum_usec_per_period);
+					   250, USEC_PER_SEC / 4);
 	if (err < 0)
 		goto end;
 
@@ -261,6 +245,7 @@ int amdtp_stream_add_pcm_hw_constraints(struct amdtp_stream *s,
 				  SNDRV_PCM_HW_PARAM_RATE, -1);
 	if (err < 0)
 		goto end;
+
 	err = snd_pcm_hw_rule_add(runtime, 0, SNDRV_PCM_HW_PARAM_BUFFER_SIZE,
 				  apply_constraint_to_size, NULL,
 				  SNDRV_PCM_HW_PARAM_BUFFER_SIZE,
@@ -1715,7 +1700,9 @@ static int amdtp_stream_start(struct amdtp_stream *s, int channel, int speed,
 	} else {
 		dir = DMA_TO_DEVICE;
 		type = FW_ISO_CONTEXT_TRANSMIT;
-		ctx_header_size = 0;	// No effect for IT context.
+		// Although no effect for IT context, this value is required to compute the size
+		// of header storage correctly.
+		ctx_header_size = sizeof(__be32);
 	}
 	max_ctx_payload_size = amdtp_stream_get_max_ctx_payload_size(s);
 
@@ -1724,9 +1711,9 @@ static int amdtp_stream_start(struct amdtp_stream *s, int channel, int speed,
 		return err;
 	s->queue_size = queue_size;
 
-	s->context = fw_iso_context_create(fw_parent_device(s->unit)->card,
-					  type, channel, speed, ctx_header_size,
-					  amdtp_stream_first_callback, s);
+	s->context = fw_iso_context_create_with_header_storage_size(
+			fw_parent_device(s->unit)->card, type, channel, speed, ctx_header_size,
+			ctx_header_size * queue_size, amdtp_stream_first_callback, s);
 	if (IS_ERR(s->context)) {
 		err = PTR_ERR(s->context);
 		if (err == -EBUSY)
-- 
2.51.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
