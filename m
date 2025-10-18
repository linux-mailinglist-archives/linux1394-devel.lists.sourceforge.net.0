Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B7BA2BEC6B1
	for <lists+linux1394-devel@lfdr.de>; Sat, 18 Oct 2025 05:56:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=onwB3NFYUHOstN7nAaS4Q6T+DQF/Y/0/Tc86Q+S7Wqk=; b=B4VQp1iXwxASzARmGjHm4yve9Q
	Yfc7O3Zb4jyqx6OA82z1mvob3EGJLmTDF4V3eO16l9FBUw7ID5/DcIwjX7cmLL/wVp4kLHCj4pugw
	LzzNTEqNYboC2J19v0OvOVCuszcoqansnfxtVYyuAuZnFntUE9XlafWHQV66DqrwalrQ=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1v9y2p-0000nD-Ni;
	Sat, 18 Oct 2025 03:55:51 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1v9y2o-0000n5-6E
 for linux1394-devel@lists.sourceforge.net;
 Sat, 18 Oct 2025 03:55:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=O1OWHiw1ISX/XiaSgOMO5lUblMBfevYTme7V5wEqPbA=; b=bJ6SrcdyZz7sfztBlhzlDvwQGp
 LWuVZn/qJrdmSyJWo4iI83UUVcBrNv0gTGtgaQPa4ZDwftgeRwMqqbha/g9ewnjaPVvikXxguSSUS
 PjYGef7Q3tBOEjjo8nlLHnQx+yQ1ZNnvaMcB+SpveLv6Hj8n6X068lKcFD6MHHB/8Pdo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=O1OWHiw1ISX/XiaSgOMO5lUblMBfevYTme7V5wEqPbA=; b=RhwNaeg5SHudCqMo14WKoEa0tR
 Fw/5gbDNJYROQ/OOv0VUTNyvi6rj3QDMsBQREziur4cxhx9yTSHWXc+SeEvAErMdL/mWrbAv7GyJZ
 5ODDSkoywcVNTOx1m9gFfmZ023ACGA0nRCR38UVMRAqBe6RZ8BR1fF9kItvSD5J3B/IU=;
Received: from fout-b5-smtp.messagingengine.com ([202.12.124.148])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1v9y2n-0004sG-FE for linux1394-devel@lists.sourceforge.net;
 Sat, 18 Oct 2025 03:55:50 +0000
Received: from phl-compute-04.internal (phl-compute-04.internal [10.202.2.44])
 by mailfout.stl.internal (Postfix) with ESMTP id EEC861D0014C;
 Fri, 17 Oct 2025 23:55:43 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-04.internal (MEProxy); Fri, 17 Oct 2025 23:55:44 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1760759743; x=
 1760846143; bh=O1OWHiw1ISX/XiaSgOMO5lUblMBfevYTme7V5wEqPbA=; b=Q
 3GvJEB2TOTodbuldWv5xNSegMOP8BgIuxjug90YgXoUrBvz7RCZWiW0VnQwA/Lfn
 ULGPPwUnF1gHYeu2caoULUwVi9rwrNvWGMZuLbYyNvGnxgLWPVrRMp8rE2vfcDAA
 BVDv9Ehjuf7DUtk0r03Fb61feZDKhw4vizZYuPmbkjiVEythkv3OwVe15CByvpRw
 nkdA+s+/mGPdvQhnWYOqRYQHdU1NG1Es7WoRznlYl+mZSszkbC+73vx4ukBSSGrG
 0qb8Nju1lWFSlFhaH/OoyQB2bVDGa2OuNosIXJU2xvVJilxvJzGvrieuaTiU2v7y
 aFeQ33DTlcyO2nLPZbvYA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm2; t=1760759743; x=1760846143; bh=O
 1OWHiw1ISX/XiaSgOMO5lUblMBfevYTme7V5wEqPbA=; b=JFsiRHb+IeRAUhjTY
 sbnKSLsbLEhv0fiIdBUBDTgxQPOoGK3gCqiuOt9BY1s+g56ZGk5OWxZRpLNUzkxI
 hxKYYjIeNp7V+n2Ngz5ExKt5z8Tt7Nfcfn4HVxvAeBAlLw63Dnls01XxBOpU1mkF
 0G6AVOsAgeY4qthXgKf0I6+MoXW7gCGwjwSrYMdGagbbP1pfkfQ3nx/VKi3P6lgc
 pFOA/6p3ePKiM8laGWj7m587f7gMGoAwUjEUo1/yC0dp0snbr0mKgiNKR7eCdDl8
 Wx+MrzD8mQANRvBu+qXH0oc4A+2NSqoLS41okGwZycaffb3By7A+TLgFdJmMJkfd
 488lw==
X-ME-Sender: <xms:vw_zaDzOvuXp2ek6C9cpUQilY3HGXREMu-I4_EyR5yUYnK-sXTrEWQ>
 <xme:vw_zaLY4aXFPe0mcI4tHNNvcFXLzPpdfg20K7peBJoYHbgbCrgDUEs1GOESe7qmcI
 yTHQL0J-bzkhaKQPftaeN3cjigRCYUNY8kCSPfViwqz0242XlJuFbs>
X-ME-Received: <xmr:vw_zaFSzW1ypC7AkJJ1NELS70vq3ssrqC2j9SCfz3FqT8h-T4T7S13gR3sSfHwt2LrDDTqyPrKxFix_0e2wa8BGR8kNxabSAkxyTJRrQp5i82A>
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
X-ME-Proxy: <xmx:vw_zaFyTx0JIo5jdl5RBzMB4zRG_pFRguEGXuB76VuEiNMVWH9y4og>
 <xmx:vw_zaP1zGMz1qDUBO2yAZr4UlrLnyQCXsuBJ5HY8rLeS3bjb9iS7VQ>
 <xmx:vw_zaL6--gqqUhoxBVHDjgspuC6oMbvU5-kqiXZpHsBySg11-6YDtg>
 <xmx:vw_zaKUgizwdbv9ooDpJUMbCpcgizXDXFHZQeTptpD3HkXA5ML07dw>
 <xmx:vw_zaIWeZg7iABT5hco4kiBBO2J8tIWREP1L4_quauW97XwdsHfEuOhu>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 17 Oct 2025 23:55:42 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 4/4] ALSA: firewire-tascam: reserve resources for transferred
 isochronous packets at S400
Date: Sat, 18 Oct 2025 12:55:32 +0900
Message-ID: <20251018035532.287124-5-o-takashi@sakamocchi.jp>
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
 Content preview: TASCAM FW-1884/FW-1804/FW-1082 have a quirk that they often
 freeze when receiving isochronous packets at S400. This behaviour is
 suppressed
 by a new quirk flag added in Linux FireWire core to restrict [...] 
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
X-Headers-End: 1v9y2n-0004sG-FE
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

TASCAM FW-1884/FW-1804/FW-1082 have a quirk that they often freeze when
receiving isochronous packets at S400. This behaviour is suppressed by a
new quirk flag added in Linux FireWire core to restrict maximum speed.
Consequently both of the asynchronous transactions and isochronous
transmissions are done at S200. However, the device still transfers
isochronous packet at S400, and the way to indicate the transmission
speed is not cleared yet.

This commit correctly reserves isochronous resources for the transferred
packet stream at S400. As a beneficial side effect, the pair of
isochronous transmissions for FW-1884 fits within the bandwidth capacity
of the bus.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 sound/firewire/tascam/tascam-stream.c | 21 +++++++++++----------
 1 file changed, 11 insertions(+), 10 deletions(-)

diff --git a/sound/firewire/tascam/tascam-stream.c b/sound/firewire/tascam/tascam-stream.c
index 9c8fddd7dee1..4ecd151a46c1 100644
--- a/sound/firewire/tascam/tascam-stream.c
+++ b/sound/firewire/tascam/tascam-stream.c
@@ -282,20 +282,22 @@ static int keep_resources(struct snd_tscm *tscm, unsigned int rate,
 			  struct amdtp_stream *stream)
 {
 	struct fw_iso_resources *resources;
+	int speed;
 	int err;
 
-	if (stream == &tscm->tx_stream)
+	if (stream == &tscm->tx_stream) {
 		resources = &tscm->tx_resources;
-	else
+		speed = fw_parent_device(tscm->unit)->max_speed;
+	} else {
 		resources = &tscm->rx_resources;
+		speed = SCODE_400;
+	}
 
 	err = amdtp_tscm_set_parameters(stream, rate);
 	if (err < 0)
 		return err;
 
-	return fw_iso_resources_allocate(resources,
-				amdtp_stream_get_max_payload(stream),
-				fw_parent_device(tscm->unit)->max_speed);
+	return fw_iso_resources_allocate(resources, amdtp_stream_get_max_payload(stream), speed);
 }
 
 static int init_stream(struct snd_tscm *tscm, struct amdtp_stream *s)
@@ -455,7 +457,6 @@ int snd_tscm_stream_start_duplex(struct snd_tscm *tscm, unsigned int rate)
 	}
 
 	if (!amdtp_stream_running(&tscm->rx_stream)) {
-		int spd = fw_parent_device(tscm->unit)->max_speed;
 		unsigned int tx_init_skip_cycles;
 
 		err = set_stream_formats(tscm, rate);
@@ -466,13 +467,13 @@ int snd_tscm_stream_start_duplex(struct snd_tscm *tscm, unsigned int rate)
 		if (err < 0)
 			goto error;
 
-		err = amdtp_domain_add_stream(&tscm->domain, &tscm->rx_stream,
-					      tscm->rx_resources.channel, spd);
+		err = amdtp_domain_add_stream(&tscm->domain, &tscm->rx_stream, tscm->rx_resources.channel,
+					      fw_parent_device(tscm->unit)->max_speed);
 		if (err < 0)
 			goto error;
 
-		err = amdtp_domain_add_stream(&tscm->domain, &tscm->tx_stream,
-					      tscm->tx_resources.channel, spd);
+		err = amdtp_domain_add_stream(&tscm->domain, &tscm->tx_stream, tscm->tx_resources.channel,
+					      SCODE_400);
 		if (err < 0)
 			goto error;
 
-- 
2.51.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
