Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CC7D1967608
	for <lists+linux1394-devel@lfdr.de>; Sun,  1 Sep 2024 13:07:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1skiQL-0000Dy-2Q;
	Sun, 01 Sep 2024 11:07:13 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1skiQI-0000De-L5
 for linux1394-devel@lists.sourceforge.net;
 Sun, 01 Sep 2024 11:07:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=//0Au4s75rwOEPL1M/L4VrMh9aoaUHrkh76N1UUAiIU=; b=LE3xRGFjn6qKIxpLosfNIMrmGe
 RIQ/cnnxNz848b2kputqFELny6or9m6Uo6ZDi9DXFhoFjmLnNjoLUldRyIyXB9nJ75hylCjUENTNH
 YQWlPDd4aV7RjdE6xzTw6sLE/0rlRU5+FVKMNOLtp+iLLcnrkhpip+VLbDcXtw5NBHz4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=//0Au4s75rwOEPL1M/L4VrMh9aoaUHrkh76N1UUAiIU=; b=CBdQPMMzY7XeGzZEwumfvsvW4s
 MyPCFaRaOg8kSNCSkeG5nF1zUTmElGWTyU+8z6AgYYL1xeRN7ST3xMU9lWjmnK8Uhj0V3Ywy7+Ehm
 FvKbP5BCHwxoEtuOyOFdat/+sUKBSV5+7eS99dx65BFWzmd/vSU3NBtkNJM6Oox1IDks=;
Received: from fhigh2-smtp.messagingengine.com ([103.168.172.153])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1skiQH-0006LC-OV for linux1394-devel@lists.sourceforge.net;
 Sun, 01 Sep 2024 11:07:10 +0000
Received: from phl-compute-05.internal (phl-compute-05.nyi.internal
 [10.202.2.45])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id 312F8114029C;
 Sun,  1 Sep 2024 07:06:59 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-05.internal (MEProxy); Sun, 01 Sep 2024 07:06:59 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1725188819; x=
 1725275219; bh=//0Au4s75rwOEPL1M/L4VrMh9aoaUHrkh76N1UUAiIU=; b=q
 T507HD/bUEHBWBS8z3b3pUPfH+n+8w2LZin0WWgcfbuRWxXSPXpi+kUv4MhtQbAU
 otRqVUz3RccqpCLvCdeXP7dQEk0Fz9Pk4PFpQI7LPxHDOZq3fQfgu6dZYXT/gpCY
 Fud6tQCeGowl1jR0fViqhaKrPZt1GebhJO1VX6BK8CwGsB7+bljn4OK/Yg5KG+CN
 OEePjUGaawtNJbZDoO+5ZOfQneC9qnQ/6JZ45/WJ4rx93syVjrHWZw0yt+fc6QPd
 BwGeTUN/ECxlUoFpjwEu1NkR0lQyLwdD8VvnAokCEhRaTcVG2Zk4fhtTp1vKv7kG
 b4ZeVJb+lGPpVbb9n3U1g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1725188819; x=
 1725275219; bh=//0Au4s75rwOEPL1M/L4VrMh9aoaUHrkh76N1UUAiIU=; b=O
 kj/PI//RnruvjSE7nUR7G4Y+xLae7knIcrf7RelvOv+DvYfwkCeibrcmY6cN5xoE
 Fi1Ci5ppyCqkEcXAqNd+eoM93n8YSWD9S9Y0uOH6YnF5hBXKclegdpccGjg479Xq
 GGI3Kt+WJbU3GP76MiUfhduuG6a0NDAfdsXcG3I2As3UwU7a57xwMvvAJFyjjw1y
 k26VMcGzvinVx5BqtZrN1K0mRkdnShdOXDeYA6l6+J6jSfEBu18Sy5hVtbn1Oobk
 iWGvCMbZqsMziCcul1Rm4hm+zJajBq9MS4MtR6ENfwpkQJDxtCGThDs8MIE9Bkta
 rmBmi0khRKXyuLraFQg5w==
X-ME-Sender: <xms:00rUZiERSHPlPbKMgnzEpYAn6Ta_OPyuUH0maltk8xcbJBAFR-zXLA>
 <xme:00rUZjUNdYWRuN6T-f1Tuuqyonly26vEc0_QfMOat5JxvN5nvNf2r6lkapksgsdE5
 c4QsfAIIDdwF1x0lY4>
X-ME-Received: <xmr:00rUZsKV8Bbhcdz17rcJ2RhGbw8WiloMW7GlPj1QpN5U33Ali92fYAQ982CcqkFXmBflUPaObOTyyWPEnxDCSOVSzqDl1mrgOKFMqvzLHgU>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudeghedguddvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevuf
 ffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghm
 ohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrg
 htthgvrhhnpedvjefgjeeuvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdff
 kedvtdenucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhrohhmpe
 hoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopeej
 pdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvg
 hlsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhu
 gidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplhhinh
 hugidqshhouhhnugesvhhgvghrrdhkvghrnhgvlhdrohhrghdprhgtphhtthhopegrphgr
 ihhssehlihhnuhigrdhmihgtrhhoshhofhhtrdgtohhmpdhrtghpthhtohepvggumhhunh
 gurdhrrghilhgvsehprhhothhonhhmrghilhdrtghomhdprhgtphhtthhopehlihhnuhig
 qdhmvgguihgrsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtohepnhgvthguvg
 hvsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:00rUZsF7t3oKn5GSPBPolOdgfDbDOjmDf_QNYyKtWhakIhj0tF9MvA>
 <xmx:00rUZoXbfsnDnu7RxGC9C9vmT64sGVE50LT1lq_F1_GuBtRw5otPig>
 <xmx:00rUZvORv_lNf_A9qaWv72GoKPM9ff3cFjtqqm_2DQGo7uqBrorMtw>
 <xmx:00rUZv0HUywF5nL-pGwO9l_UxCr2fRVhfqlT0OOtbn5omSgDuMymUw>
 <xmx:00rUZrFOQJsANkA-h2ZzRqhuyITQOILfRiFyxa4xYqK7HTRvwUYPlryY>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 1 Sep 2024 07:06:57 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [RFT][PATCH 5/5] ALSA: firewire: use nonatomic PCM operation
Date: Sun,  1 Sep 2024 20:06:42 +0900
Message-ID: <20240901110642.154523-6-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240901110642.154523-1-o-takashi@sakamocchi.jp>
References: <20240901110642.154523-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In the former commits, the callback of isochronous context
 runs on work process. In the case, ALSA PCM device has a flag, nonatomic,
 to acquire mutex lock instead of spin lock for PCM substream group. 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.153 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [103.168.172.153 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1skiQH-0006LC-OV
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
Cc: edmund.raile@protonmail.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org,
 apais@linux.microsoft.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

In the former commits, the callback of isochronous context runs on work
process. In the case, ALSA PCM device has a flag, nonatomic, to acquire
mutex lock instead of spin lock for PCM substream group.

This commit uses the flag. It has an advantage in the case that ALSA PCM
application uses the large size of intermediate buffer, since it takes
too long time even in tasklet softIRQ to process many of isochronous
packets. It could result in the delay of system event due to disabled
IRQ so long.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 sound/firewire/amdtp-stream.c            | 9 ++++++++-
 sound/firewire/bebob/bebob_pcm.c         | 1 +
 sound/firewire/dice/dice-pcm.c           | 1 +
 sound/firewire/digi00x/digi00x-pcm.c     | 1 +
 sound/firewire/fireface/ff-pcm.c         | 1 +
 sound/firewire/fireworks/fireworks_pcm.c | 1 +
 sound/firewire/isight.c                  | 1 +
 sound/firewire/motu/motu-pcm.c           | 1 +
 sound/firewire/oxfw/oxfw-pcm.c           | 1 +
 sound/firewire/tascam/tascam-pcm.c       | 1 +
 10 files changed, 17 insertions(+), 1 deletion(-)

diff --git a/sound/firewire/amdtp-stream.c b/sound/firewire/amdtp-stream.c
index c827d7d8d800..7e97ad133874 100644
--- a/sound/firewire/amdtp-stream.c
+++ b/sound/firewire/amdtp-stream.c
@@ -1055,8 +1055,15 @@ static void generate_rx_packet_descs(struct amdtp_stream *s, struct pkt_desc *de
 
 static inline void cancel_stream(struct amdtp_stream *s)
 {
+	struct work_struct *work = current_work();
+
 	s->packet_index = -1;
-	if (in_softirq())
+
+	// Detect work items for any isochronous context. The work item for pcm_period_work()
+	// should be avoided since the call of snd_pcm_period_elapsed() can reach via
+	// snd_pcm_ops.pointer() under acquiring PCM stream(group) lock and causes dead lock at
+	// snd_pcm_stop_xrun().
+	if (work && work != &s->period_work)
 		amdtp_stream_pcm_abort(s);
 	WRITE_ONCE(s->pcm_buffer_pointer, SNDRV_PCM_POS_XRUN);
 }
diff --git a/sound/firewire/bebob/bebob_pcm.c b/sound/firewire/bebob/bebob_pcm.c
index ce49eef0fcba..360ebf3c4ca2 100644
--- a/sound/firewire/bebob/bebob_pcm.c
+++ b/sound/firewire/bebob/bebob_pcm.c
@@ -367,6 +367,7 @@ int snd_bebob_create_pcm_devices(struct snd_bebob *bebob)
 		goto end;
 
 	pcm->private_data = bebob;
+	pcm->nonatomic = true;
 	snprintf(pcm->name, sizeof(pcm->name),
 		 "%s PCM", bebob->card->shortname);
 	snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK, &playback_ops);
diff --git a/sound/firewire/dice/dice-pcm.c b/sound/firewire/dice/dice-pcm.c
index d64366217d57..2cf2adb48f2a 100644
--- a/sound/firewire/dice/dice-pcm.c
+++ b/sound/firewire/dice/dice-pcm.c
@@ -441,6 +441,7 @@ int snd_dice_create_pcm(struct snd_dice *dice)
 		if (err < 0)
 			return err;
 		pcm->private_data = dice;
+		pcm->nonatomic = true;
 		strcpy(pcm->name, dice->card->shortname);
 
 		if (capture > 0)
diff --git a/sound/firewire/digi00x/digi00x-pcm.c b/sound/firewire/digi00x/digi00x-pcm.c
index 3bd1575c9d9c..85e65cbc00c4 100644
--- a/sound/firewire/digi00x/digi00x-pcm.c
+++ b/sound/firewire/digi00x/digi00x-pcm.c
@@ -350,6 +350,7 @@ int snd_dg00x_create_pcm_devices(struct snd_dg00x *dg00x)
 		return err;
 
 	pcm->private_data = dg00x;
+	pcm->nonatomic = true;
 	snprintf(pcm->name, sizeof(pcm->name),
 		 "%s PCM", dg00x->card->shortname);
 	snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK, &playback_ops);
diff --git a/sound/firewire/fireface/ff-pcm.c b/sound/firewire/fireface/ff-pcm.c
index ec915671a79b..63457d24a288 100644
--- a/sound/firewire/fireface/ff-pcm.c
+++ b/sound/firewire/fireface/ff-pcm.c
@@ -390,6 +390,7 @@ int snd_ff_create_pcm_devices(struct snd_ff *ff)
 		return err;
 
 	pcm->private_data = ff;
+	pcm->nonatomic = true;
 	snprintf(pcm->name, sizeof(pcm->name),
 		 "%s PCM", ff->card->shortname);
 	snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK, &pcm_playback_ops);
diff --git a/sound/firewire/fireworks/fireworks_pcm.c b/sound/firewire/fireworks/fireworks_pcm.c
index c3c21860b245..eaf7778211de 100644
--- a/sound/firewire/fireworks/fireworks_pcm.c
+++ b/sound/firewire/fireworks/fireworks_pcm.c
@@ -397,6 +397,7 @@ int snd_efw_create_pcm_devices(struct snd_efw *efw)
 		goto end;
 
 	pcm->private_data = efw;
+	pcm->nonatomic = true;
 	snprintf(pcm->name, sizeof(pcm->name), "%s PCM", efw->card->shortname);
 	snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK, &playback_ops);
 	snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_CAPTURE, &capture_ops);
diff --git a/sound/firewire/isight.c b/sound/firewire/isight.c
index 806f82c9ceee..b1e059f0d473 100644
--- a/sound/firewire/isight.c
+++ b/sound/firewire/isight.c
@@ -454,6 +454,7 @@ static int isight_create_pcm(struct isight *isight)
 	if (err < 0)
 		return err;
 	pcm->private_data = isight;
+	pcm->nonatomic = true;
 	strcpy(pcm->name, "iSight");
 	isight->pcm = pcm->streams[SNDRV_PCM_STREAM_CAPTURE].substream;
 	isight->pcm->ops = &ops;
diff --git a/sound/firewire/motu/motu-pcm.c b/sound/firewire/motu/motu-pcm.c
index d410c2efbde5..f3b48495acae 100644
--- a/sound/firewire/motu/motu-pcm.c
+++ b/sound/firewire/motu/motu-pcm.c
@@ -360,6 +360,7 @@ int snd_motu_create_pcm_devices(struct snd_motu *motu)
 	if (err < 0)
 		return err;
 	pcm->private_data = motu;
+	pcm->nonatomic = true;
 	strcpy(pcm->name, motu->card->shortname);
 
 	snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_CAPTURE, &capture_ops);
diff --git a/sound/firewire/oxfw/oxfw-pcm.c b/sound/firewire/oxfw/oxfw-pcm.c
index 5f43a0b826d2..8ca9dde54ec6 100644
--- a/sound/firewire/oxfw/oxfw-pcm.c
+++ b/sound/firewire/oxfw/oxfw-pcm.c
@@ -440,6 +440,7 @@ int snd_oxfw_create_pcm(struct snd_oxfw *oxfw)
 		return err;
 
 	pcm->private_data = oxfw;
+	pcm->nonatomic = true;
 	strcpy(pcm->name, oxfw->card->shortname);
 	snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK, &playback_ops);
 	if (cap > 0)
diff --git a/sound/firewire/tascam/tascam-pcm.c b/sound/firewire/tascam/tascam-pcm.c
index f6da571707ac..a73003ac11e6 100644
--- a/sound/firewire/tascam/tascam-pcm.c
+++ b/sound/firewire/tascam/tascam-pcm.c
@@ -279,6 +279,7 @@ int snd_tscm_create_pcm_devices(struct snd_tscm *tscm)
 		return err;
 
 	pcm->private_data = tscm;
+	pcm->nonatomic = true;
 	snprintf(pcm->name, sizeof(pcm->name),
 		 "%s PCM", tscm->card->shortname);
 	snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK, &playback_ops);
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
