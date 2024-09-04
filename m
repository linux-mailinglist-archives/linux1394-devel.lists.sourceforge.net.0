Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7132E96BD6B
	for <lists+linux1394-devel@lfdr.de>; Wed,  4 Sep 2024 14:59:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1slpb0-0003JJ-Kq;
	Wed, 04 Sep 2024 12:58:50 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1slpav-0003Iz-OO
 for linux1394-devel@lists.sourceforge.net;
 Wed, 04 Sep 2024 12:58:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nv0xbhGWiRX7u7gz9SGKHEd/5MDr79jm+xvr16IY/JI=; b=M20/vZQT/B+Yx+Z8GbIio9XuHx
 LUBO1Eg08ggW38jLZsb2uMVPr+vWX79Npchu+oh8XRA0pHBQfdeCsJscfMqy5yAh2MdePc9gSeEuS
 gI4EAZgelAU0jrif47E4EOBeyujw/aFU1r+IMt1JWRjLvaHAyCV+3eBRS6YTkZpWpMeU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nv0xbhGWiRX7u7gz9SGKHEd/5MDr79jm+xvr16IY/JI=; b=Lz9LWmR8OClp2S4zZpm04uUyll
 w4EbNQfnOzicb2LQ535vfaSxZH0jEI9JjRYpsrwyqbvdP0e/i+uGDkTjEHfQCbcVdapeaxuVq94V8
 AqCjrVaI9ibRwRkg9YqrW9KzPOmGc4s4ZomNbZ3/eoKIkuxPrYrJ2qflkpc7HeTBMJpU=;
Received: from fhigh8-smtp.messagingengine.com ([103.168.172.159])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1slpau-0000SZ-26 for linux1394-devel@lists.sourceforge.net;
 Wed, 04 Sep 2024 12:58:45 +0000
Received: from phl-compute-05.internal (phl-compute-05.phl.internal
 [10.202.2.45])
 by mailfhigh.phl.internal (Postfix) with ESMTP id 834171140248
 for <linux1394-devel@lists.sourceforge.net>;
 Wed,  4 Sep 2024 08:58:33 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-05.internal (MEProxy); Wed, 04 Sep 2024 08:58:33 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:content-transfer-encoding:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1725454713; x=
 1725541113; bh=nv0xbhGWiRX7u7gz9SGKHEd/5MDr79jm+xvr16IY/JI=; b=U
 DsLXNJZvm4Z1gJXcPvooN6EF1W8+evxxxPp9OiJcvDf34Kie9vqSkX+fnvpaQJd9
 EomJQihYupcuxccp91qJmUoHbKJ3yZB246rwdJPQv7FrYs+TlVbHZk3tuGshfcAS
 TJJ6oUXjCn8x/gJkDF3+uEsbg/7+AppE/aW2+lppJqoNL1FEq5yGUaadaZ/yyRNS
 7m0PW2mdoasXRm5BD82zFd8ow5LQOyqFFeNeC/SBiBh4CwpvxNiZTZG+30lT+tXb
 zqmRIfvWitEVYSCYre5AZss7iilUPXXuWsVW71nZuR7h29if5mqagtncloet5jd/
 r4kE9aCeTXSrHsvaraUqw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:date:feedback-id:feedback-id:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm1; t=1725454713; x=1725541113; bh=nv0xbhGWiRX7u
 7gz9SGKHEd/5MDr79jm+xvr16IY/JI=; b=ltS7OTqyJOWvehqap0/5jCo8HxetL
 Ggjo/uy1yEAm3OHNWdPz/nu5Wz+yxZ97pctQgzR1SA2u0ri44w46Q4XYbl/RrNie
 FN92CKwIgvJDtcIZSvDGRpYd8dDu/B472hjqai1F+IBKphk57FysQHmkZpO0HzCQ
 mcQQ7r+ag2CUocl6f8ctjRWpnKclAL/QR2toihXQusO+qgxm1FmQhpJHYMnCkpWW
 wCNk5xFL5nycVpN7tPd/OiLIuT98dgYe3OtTUWF+HmFqjNArjCznXvqsdlIanXSA
 08eaY2+HKgaYAeFIz4jf0DO/T1AU8e0atoAMDiK3eZYi4NoezvV2VNnrw==
X-ME-Sender: <xms:eVnYZst4ZzU8mkrcAwgmoFGaM9pYhEMJoYUntnH9qtj4XCgEacGQCQ>
 <xme:eVnYZpfsrmAPEPmoB8tpX8tcwhDSQvgd8snL52QG6gawq_oWwVOqSZdeq2kjq-_Fs
 nvnfpo9sCbCJzhvt9g>
X-ME-Received: <xmr:eVnYZny-nld1Xl4olS074AoJdnMgx3kOOAzRLYRyYd-ysuk4RciEQjpsOUaTogvdUyQ5IHOlQaIy3nDXZY-yiXw1Met-L8cOskXl4pb4ZeJ2bA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudehjedgheekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpefhvffuff
 fkofgjfhgggfestdekredtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhho
 thhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrth
 htvghrnhepveefffefkeetgfevgeefleehfffhueejtdejveethfekveektdejjedvtdej
 hfejnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepoh
 dqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjphdpnhgspghrtghpthhtohepuddp
 mhhouggvpehsmhhtphhouhhtpdhrtghpthhtoheplhhinhhugidufeelgedquggvvhgvlh
 eslhhishhtshdrshhouhhrtggvfhhorhhgvgdrnhgvth
X-ME-Proxy: <xmx:eVnYZvPu7VT1Aj8vWAAYhisoac5A-qYhYHkX2IFK4VWZLkElhsYOhA>
 <xmx:eVnYZs_TRCwkrDUg5rurI6jyaf4Bk-UZkD7ChEFuYc3QYEI7Wb_adQ>
 <xmx:eVnYZnXFVPV9UQzZ0XNWog-iQSMmvDIX88rvUVyUcuEJj6xm2-jOhA>
 <xmx:eVnYZlfC-I5lXWToWhXdTIgDwcDbWJy2G23OqfGWABr7BoEr96LpVg>
 <xmx:eVnYZqnFiktAxBTScinF7I94oL5MFWjxh51Y9mixdjNS-BaZywErcSBS>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <linux1394-devel@lists.sourceforge.net>; Wed,
 4 Sep 2024 08:58:32 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 5/5] ALSA: firewire: use nonatomic PCM operation
Date: Wed,  4 Sep 2024 21:58:24 +0900
Message-ID: <20240904125824.462786-6-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240904125824.462786-1-o-takashi@sakamocchi.jp>
References: <20240904125824.462786-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In the former commits, the callback of isochronous context
 runs on usual work process. In the case, ALSA PCM device has a flag, nonatomic,
 to acquire mutex lock instead of spin lock for PCM substream [...] 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.159 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 1.0 PDS_OTHER_BAD_TLD      Untrustworthy TLDs
 [URI: a.work (work)]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1slpau-0000SZ-26
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

In the former commits, the callback of isochronous context runs on usual
work process. In the case, ALSA PCM device has a flag, nonatomic, to
acquire mutex lock instead of spin lock for PCM substream group.

This commit uses the flag. It has an advantage in the case that ALSA PCM
application uses the large size of intermediate buffer, since it takes
too long time even in tasklet softIRQ to process many of isochronous
packets, then result in the delay of system event due to disabled IRQ so
long. It is avertible to switch to nonatomic operation.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 sound/firewire/amdtp-stream.c            | 34 +++++++++++++++++++-----
 sound/firewire/bebob/bebob_pcm.c         |  1 +
 sound/firewire/dice/dice-pcm.c           |  1 +
 sound/firewire/digi00x/digi00x-pcm.c     |  1 +
 sound/firewire/fireface/ff-pcm.c         |  1 +
 sound/firewire/fireworks/fireworks_pcm.c |  1 +
 sound/firewire/isight.c                  |  1 +
 sound/firewire/motu/motu-pcm.c           |  1 +
 sound/firewire/oxfw/oxfw-pcm.c           |  1 +
 sound/firewire/tascam/tascam-pcm.c       |  1 +
 10 files changed, 36 insertions(+), 7 deletions(-)

diff --git a/sound/firewire/amdtp-stream.c b/sound/firewire/amdtp-stream.c
index c827d7d8d800..c72b2a754775 100644
--- a/sound/firewire/amdtp-stream.c
+++ b/sound/firewire/amdtp-stream.c
@@ -615,6 +615,22 @@ static void update_pcm_pointers(struct amdtp_stream *s,
 		// The program in user process should periodically check the status of intermediate
 		// buffer associated to PCM substream to process PCM frames in the buffer, instead
 		// of receiving notification of period elapsed by poll wait.
+		//
+		// Use another work item for period elapsed event to prevent the following AB/BA
+		// deadlock:
+		//
+		//             thread 1                            thread 2
+		// =================================   =================================
+		//       A.work item (process)                pcm ioctl (process)
+		//                 v                                   v
+		//       process_rx_packets()                  B.PCM stream lock
+		//       process_tx_packets()                          v
+		//                 v                        callbacks in snd_pcm_ops
+		//       update_pcm_pointers()                         v
+		//         snd_pcm_elapsed()           fw_iso_context_flush_completions()
+		//  snd_pcm_stream_lock_irqsave()             disable_work_sync()
+		//                 v                                   v
+		//     wait until release of B                wait until A exits
 		if (!pcm->runtime->no_period_wakeup)
 			queue_work(system_highpri_wq, &s->period_work);
 	}
@@ -1055,8 +1071,15 @@ static void generate_rx_packet_descs(struct amdtp_stream *s, struct pkt_desc *de
 
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
@@ -1856,12 +1879,9 @@ unsigned long amdtp_domain_stream_pcm_pointer(struct amdtp_domain *d,
 	struct amdtp_stream *irq_target = d->irq_target;
 
 	if (irq_target && amdtp_stream_running(irq_target)) {
-		// use wq to prevent AB/BA deadlock competition for
-		// substream lock:
-		// fw_iso_context_flush_completions() acquires
-		// lock by ohci_flush_iso_completions(),
-		// amdtp-stream process_rx_packets() attempts to
-		// acquire same lock by snd_pcm_elapsed()
+		// The work item to call snd_pcm_period_elapsed() can reach here by the call of
+		// snd_pcm_ops.pointer(), however less packets would be available then. Therefore
+		// the following call is just for user process contexts.
 		if (current_work() != &s->period_work)
 			fw_iso_context_flush_completions(irq_target->context);
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
