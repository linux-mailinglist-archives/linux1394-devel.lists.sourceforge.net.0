Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5411FB58887
	for <lists+linux1394-devel@lfdr.de>; Tue, 16 Sep 2025 01:48:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=piPuVaw7Z/UHEm4HASpESbFFVKwprIHuUT3/tOy3BtU=; b=PaKFVMDINQDQ+yjheWPunYEufZ
	vtV0oQaMWuadjhrIIe1zEFOXNa//7a2Hfe86Ci3xrSKy3y3cG53nvea43rcBQZ5EAHmovgxp9ILUx
	Y+bwFs3KgdUOL2KSxqXMD17vzGmAGt1nuVftLUkRTv8hj0P8M/1y0fr4b6qKNVWpojOY=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uyIvO-0002x6-Bp;
	Mon, 15 Sep 2025 23:47:58 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uyIvN-0002wy-8T
 for linux1394-devel@lists.sourceforge.net;
 Mon, 15 Sep 2025 23:47:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qsaoSUpaWqfeihvZLMbkP6PL1UV86xVlfjL5cVWoios=; b=Jhk7fVMtsZEiVaBIQFg0eu6XKz
 4bjpdmALGGyY3EHikR/yyzIzQeHqwVIyfk2PsR9xaZqkse43ZyCmruIZz510cWYHYi+fEnfZa/f/g
 tX0sLPfSuMibNuIwkfO6NZMuMUU2uyd90oSEEmQS8Vvgs0rOurjMhz0thPRwhLLIcYt0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=qsaoSUpaWqfeihvZLMbkP6PL1UV86xVlfjL5cVWoios=; b=b
 7KUTZzYvux4YFH72hhWS6nK56QibccFa5pZtF/uxFIZEyI3oWUwNCt5pIjwWwhpuSifz6Qwr9bd04
 LQq+ZSjgR4wMrO/By3Z7qf4QGy7RfctqzYDS4vwXfT9q8s/21jeDS07HWVvkS8/QsdUWkxdCzLt8v
 MJNJl2jblC21hwUw=;
Received: from fhigh-b6-smtp.messagingengine.com ([202.12.124.157])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uyIvM-0002JV-T5 for linux1394-devel@lists.sourceforge.net;
 Mon, 15 Sep 2025 23:47:57 +0000
Received: from phl-compute-09.internal (phl-compute-09.internal [10.202.2.49])
 by mailfhigh.stl.internal (Postfix) with ESMTP id 4C6387A01CA;
 Mon, 15 Sep 2025 19:47:51 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-09.internal (MEProxy); Mon, 15 Sep 2025 19:47:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm1; t=1757980071; x=1758066471; bh=qsaoSUpaWq
 feihvZLMbkP6PL1UV86xVlfjL5cVWoios=; b=pd+4wDUX19GMdCqD46brCxh+G8
 /2swdZOgWyNq2qnipQFu36SM550gtwQa0kSnKq2AP260xdHK0HUdpT+QOozucecq
 6ZXcHhDzsGb0dL4+cj696Zpp/rK/tRd834e+ZkHiPVUA8RLKncfKfLKOZaIqopbc
 KG701wCQJTNECdrU/50vtHxHFHUuvnvRZUfjXT6Y9jNLNyoDojpA5CJFKwFXAFtl
 KmOJSBnyptGjEjAw+LT+lmkauqX9WdOjBM/bIU2UrwwW6OQKflLJS3EWFAJ8HgiI
 Y0YxwgSptYHmeM6yK2mUvyZywMLDEtLlaNRgpOwyX/jMBO86x5QfKTU8S+2A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1757980071; x=1758066471; bh=qsaoSUpaWqfeihvZLMbkP6PL1UV86xVlfjL
 5cVWoios=; b=AwtrSVERl4PhGUgB1MeTHbxHZm0sSLVTACLYR7OlSVEEZoYoUqS
 nn1QI0WDMOPGRccZB89amkoddgK88hvqNA8UWWeWn33Yyn5CMf5Ce6uTQXSHSFYm
 SDTcbzxcpVxYjEPKfsqhT3EvN8SMeGmOIOq5HKkzl7LVGetYl+SnMXe3b73YYvo5
 CNO4VXtNbUlAVdMuhDFFD7LSdXdOcB0MF+l8O83mnGmB7+lneGYMjyOGHjNzha8h
 y2ft9sZH3/OFLz6wk+3QOBf4hRwtdtYiUxfaJqmL89jArrz+TjXhEQEiLTVFXBjo
 q7dTLC2RMWkeb+Md3PMGaPYrbMdRP6o2u9g==
X-ME-Sender: <xms:pqXIaEOPzqLpy7v-os91KJbm_Ce5xvso-5SdtwmFfC5XWCZ-Trr2hQ>
 <xme:pqXIaD6vM_wnsP_b-sA5yQoiRVvBEFWXHMih0ojknTdD7U47H-2oLVy3PzNJUcRg2
 GROeUyQ7TuMO_7pGG0>
X-ME-Received: <xmr:pqXIaNM8M8AQ3k--akeNUFORGtqhE7NydLXKmdtTXbIjjGtQVD2lx40R1pdVlmgc--N3cBBVn3kPkhqlpf0bQYrfHahR3s_PX_U4SVcoHaiZFw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdefledthecutefuodetggdotefrod
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
X-ME-Proxy: <xmx:pqXIaJkqj8ZVbD4wTDM8EQMgzoSqYrX4Q8DQhugv4MfkDTmUhGR5GQ>
 <xmx:p6XIaMSQGNB1ITqfUP0d7PxjSmcrbHIWcnQQrYaFmBLqdWI_rPMULg>
 <xmx:p6XIaNDDs02elsPUoCNju7a_W0M44cPcduzu7Ge68WBQfmBFCnMPlg>
 <xmx:p6XIaDTDAWRVIOrClsg6raUI2WW-2LRHhjxMUK_zZxkV8r_-cg7iyw>
 <xmx:p6XIaMykjii7a_XyTN9utjtEYA0eOwwM3LB9YwxlL0aochpiEpwnImUU>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 15 Sep 2025 19:47:49 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 0/6] firewire: core: partition fw_card spinlock
Date: Tue, 16 Sep 2025 08:47:41 +0900
Message-ID: <20250915234747.915922-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, The current implementation uses the fw_card spinlock for
 a wide range of purposes, which goes against the theory that the type of
 lock should protect critical sections as narrowly as possible. This patchset
 adds some spinlocks for specific purposes, therefore partitioning the existing
 wide-purpose lock. 
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
X-Headers-End: 1uyIvM-0002JV-T5
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

The current implementation uses the fw_card spinlock for a wide range of
purposes, which goes against the theory that the type of lock should
protect critical sections as narrowly as possible.

This patchset adds some spinlocks for specific purposes, therefore
partitioning the existing wide-purpose lock.

Takashi Sakamoto (6):
  firewire: core: use scoped_guard() to manage critical section to
    update topology
  firewire: core: maintain phy packet receivers locally in cdev layer
  firewire: core: use spin lock specific to topology map
  firewire: core: use spin lock specific to transaction
  firewire: core: use spin lock specific to timer for split transaction
  firewire: core: annotate fw_destroy_nodes with must-hold-lock

 drivers/firewire/core-card.c        |  23 +++--
 drivers/firewire/core-cdev.c        |  27 ++++--
 drivers/firewire/core-topology.c    |  92 ++++++++++----------
 drivers/firewire/core-transaction.c | 128 ++++++++++++++++++----------
 include/linux/firewire.h            |  33 ++++---
 5 files changed, 185 insertions(+), 118 deletions(-)


base-commit: 931383f161c066ac5fda12035540498931739842
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
