Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B060B481FC
	for <lists+linux1394-devel@lfdr.de>; Mon,  8 Sep 2025 03:21:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=nhHX6FrS+4En/uLETe83t4LjK4lla+ChelQRNVmbOxc=; b=ElG2WWe04Cv/897H8nqGmzAwzq
	KWpiWchutSv5WQ+E3rdVYYgeZlV6BdFK/hICsb1U5MC0FYugR/a5VohKKMR1InWsazz4BlBeV5ygX
	iBMw724o9scj40equuwXB3CSxNsHAu7rrK+C3n4NxTB2gFvZBZO2ru9+06o+gwUJnv/o=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uvQZU-0006zT-Ur;
	Mon, 08 Sep 2025 01:21:28 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uvQZQ-0006z9-UV
 for linux1394-devel@lists.sourceforge.net;
 Mon, 08 Sep 2025 01:21:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ddrc2RDJT3nN7fxKBo2BZeJOnIBeRfoyXyg3B41qNxI=; b=InVPXkizz0ENFB7iurk/+uBe5Z
 tEtDMZrJ9OIi3t3sh9wT/wm0DjxheRpWfj5THtFdZbb4X7pZJBSDXnBM6ptBav06hMli7NRxIRPuM
 0yeDsoXkpc8nx4oH2qH0lLqafnc+yKkG8G9M2khIJ2tAb0izZ81+MpSd5osyyFwAI638=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Ddrc2RDJT3nN7fxKBo2BZeJOnIBeRfoyXyg3B41qNxI=; b=L
 FIpmAs6rM2SfbovKqckrGyuf9cmXo/EgrPrlatq+pPK4FKI+5ITTq2XuXA8IfnbaBia5tU0C5FQgx
 K7T1lAwu2QCq6Fmn5irWTfLg/kDB9YLVv0KRtH+lud/GO4tEh0QlTFuc2S1Umbqz4GAYuApn3cv8J
 qySJe6f/fxGbi/Bk=;
Received: from fout-a3-smtp.messagingengine.com ([103.168.172.146])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uvQZQ-0001ib-GI for linux1394-devel@lists.sourceforge.net;
 Mon, 08 Sep 2025 01:21:24 +0000
Received: from phl-compute-04.internal (phl-compute-04.internal [10.202.2.44])
 by mailfout.phl.internal (Postfix) with ESMTP id CFBFCEC003B;
 Sun,  7 Sep 2025 21:21:13 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-04.internal (MEProxy); Sun, 07 Sep 2025 21:21:13 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm1; t=1757294473; x=1757380873; bh=Ddrc2RDJT3
 nN7fxKBo2BZeJOnIBeRfoyXyg3B41qNxI=; b=FCawOmjk+iGWC8jzb3oxBXnmNy
 P1UfrFNW0RUO0BjVC+HqWovCKeVNPcqmfg/vsFs9M0PEvNTBw1DeeWKJNsvK7v1C
 8f4WXmsuWLBX882QnE2dxtz83AEt+RB4FaxImJFOaz4JGFM47/+cbEsZCKQd1zPa
 A7DbC+hJOVFSaQ7z/1+PpeG+6FoZURhAHVWLnrROZPk0I7EcViUhYPCdzoaFhBcT
 6GprSNeQN6CZ1nNTSL9Ok5Neo0fiFSNPCPokGZr/yeE1v2PuEEJ1UNl0rk27E1jM
 yxpzlWfoxpNF3UxKElmULm6PbcIPQQoZ/T+fzM05jtpqA5N4O6hL65ojIjyg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1757294473; x=1757380873; bh=Ddrc2RDJT3nN7fxKBo2BZeJOnIBeRfoyXyg
 3B41qNxI=; b=C+fHIuAI9LLfjgNHrUWDU3bcltwyJhgMAC2fbRKCh5EMGf3C7In
 i0x490GFJMAE3DayKOwo8RVKRugJyp8PFxs5rqw+8hxzOZLm3Jbf+YUswyR8Bd6O
 4J4IvammciNXi+dGKvRGht3pR+SigsRMPMq+Z5b5RXwCwRcEH+SKmd7/VCyl8UUT
 JZ+HKkKmiw0O3jpwFX36QpvjCyBRTBSoU4bl6ujkZ/bnPLEbtWX9h1KkS4SG7Iez
 9vbqSds1ns2u8KYMSR9+NnE5hzN7ar4L7jwMKWh8TbeL3ITb1BZ4wmwKWM/+2O3b
 t9yPHiZJMXsQDhZ3tayETavdhcruo3oOosA==
X-ME-Sender: <xms:iS--aDS57iPOhBuc_mlrjMGI8H1fRbULGQRbD2iJia6UpJtV8JTXXg>
 <xme:iS--aNsQwIT4CqOjn5iZncoryGwbAzt0Hq_h6FWCn8nnciGWyo_cnb-TCcmVcThNp
 XgniFgbAhwVz91794M>
X-ME-Received: <xmr:iS--aKzaZyYh47cr-_2rqYM1L8oJXzYDw6jKrrivp_J3vVVw6rc49qoHZ_kPhyFcSiMaKUbKrlEMQc6rZc-DJdcoScdjo73RbfiNeobY63E>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdduiedulecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgggfestdekredtredttd
 enucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihes
 shgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepffdvueelffevkeduhf
 etjeduffeghfettdfguedtgfdvgfeufeduheevheevkeeknecuvehluhhsthgvrhfuihii
 vgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmh
 hotggthhhirdhjphdpnhgspghrtghpthhtohepvddpmhhouggvpehsmhhtphhouhhtpdhr
 tghpthhtoheplhhinhhugidufeelgedquggvvhgvlheslhhishhtshdrshhouhhrtggvfh
 horhhgvgdrnhgvthdprhgtphhtthhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghrrdhk
 vghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:iS--aP5V00JTWOq-QHiEtgZzrhJQuGU7F1tnxLO026u_Ip71HjIsjg>
 <xmx:iS--aMXIN48tOfGqROTX7-x-dsp6M7vBjyuEF26a10idsiJZwKOyTw>
 <xmx:iS--aD2COzmdGsNOpr_oZ7_tPv1w-l5bNFMHEUzLASt5ZlCwaisluQ>
 <xmx:iS--aJ3FX7Qt0ZOee25r4_DDFZlKp-x1lemz-OcifSHFzcuTCMUrvQ>
 <xmx:iS--aL8HuevlvgWzjO1UKdqbVPy-D9EWN5-YmIMKHRYNKObU4U9Gy-Vv>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 7 Sep 2025 21:21:12 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 00/11] firewire: code refactoring mainly for bm_work
Date: Mon,  8 Sep 2025 10:20:57 +0900
Message-ID: <20250908012108.514698-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, The core function in this subsystem have bm_work work
 item. The corresponding function has many lines with comments. It is a sign
 that it is time to be refactored, in my experience. This series includes
 the first take for the purpose, as well as the other code improvements of
 1394 OHCI PCI driver and the other core functions. 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1uvQZQ-0001ib-GI
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

Hi,

The core function in this subsystem have bm_work work item. The
corresponding function has many lines with comments. It is a sign
that it is time to be refactored, in my experience.

This series includes the first take for the purpose, as well as the
other code improvements of 1394 OHCI PCI driver and the other core
functions.

Takashi Sakamoto (11):
  firewire: ohci: use kcalloc() variant for array allocation
  firewire: core: utilize cleanup function to release workqueue in error
    path
  firewire: ohci: use return value from fw_node_get()
  firewire: core: add helper functions to access to fw_device data in
    fw_node structure
  firewire: core: use cleanup function in bm_work
  firewire: ohci: localize transaction data and rcode per condition
    branch
  firewire: core: code refactoring to evaluate transaction result to
    CSR_BUS_MANAGER_ID
  firewire: core: refer fw_card member to initiate bus reset under
    acquiring lock
  firewire: core: code refactoring to detect both IEEE 1394:1995 IRM and
    Canon MV5i
  firewire: core: code refactoring to investigate root node for bus
    manager
  firewire: core: code refactoring whether root node is cycle master
    capable

 drivers/firewire/core-card.c   | 239 +++++++++++++++++----------------
 drivers/firewire/core-device.c |  18 +--
 drivers/firewire/core.h        |  14 +-
 drivers/firewire/ohci.c        |   7 +-
 4 files changed, 143 insertions(+), 135 deletions(-)


base-commit: a901f493d06631091bf1f644fdbb5cb4f566645d
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
