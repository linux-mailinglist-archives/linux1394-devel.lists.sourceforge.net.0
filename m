Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7888EAD9C95
	for <lists+linux1394-devel@lfdr.de>; Sat, 14 Jun 2025 13:52:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=bet1AQkQAvgORijneQ4N2bEDOJvlp3oq5o2+rJm0wTc=; b=TUmfrFXvgbuycD7ycJuUOQE0gW
	Y/CfBIluIJZU9RIpIuSer1hCNx/rFtMuB3Mo16N/chQvCMQscXQTCR7haTpwTxMFI9+jsDVgomluV
	9Q8etilfTQOxbRv53LP40rti0w8GrEJoNG5GxoVNyqHVixMTXQl37EhdWyXTZkpkQzio=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uQPQg-0002bc-TV;
	Sat, 14 Jun 2025 11:52:10 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uQPQe-0002bS-VV
 for linux1394-devel@lists.sourceforge.net;
 Sat, 14 Jun 2025 11:52:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IK/XiAot4OKLe1kIw2zSimDrO+1Oe6vk5F7XGo0YnsQ=; b=DH9ku80m5lJG2BoCZ1DV/GBCIc
 BI7GaO0KvrdFdnMgHprfJjHSxMWVaKu1soO09AZ6R/5UOGOV2Rq9uWhVYZgfi1Ls6fP8q7tZRwqxN
 a3VUpPaT99bp3bavhSynY5zPEroFTEO2WBi9Nad5N1+jNX62jKJ1JtLvcG7RIp+4w46o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=IK/XiAot4OKLe1kIw2zSimDrO+1Oe6vk5F7XGo0YnsQ=; b=m
 tc0nMzAWCOOT8/moeIR6SGeEoqsLT9CgvNrBvyei6vvx1Z2QhygYSa2q2VjrToRqFCaWLAscUEwZD
 SrMQy8JvQcRfHp4Cn3u72YgoD3nMVuwC0oLrl6rrKCmJ4EL4EzYX/dxRZ+vF00Oe8e7IEKWAwdYuE
 Jxsc48bal62e7CQY=;
Received: from fhigh-a8-smtp.messagingengine.com ([103.168.172.159])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uQPQe-0000WT-9c for linux1394-devel@lists.sourceforge.net;
 Sat, 14 Jun 2025 11:52:08 +0000
Received: from phl-compute-05.internal (phl-compute-05.phl.internal
 [10.202.2.45])
 by mailfhigh.phl.internal (Postfix) with ESMTP id 0F7921140155;
 Sat, 14 Jun 2025 07:34:54 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-05.internal (MEProxy); Sat, 14 Jun 2025 07:34:54 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm1; t=1749900894; x=1749987294; bh=IK/XiAot4O
 KLe1kIw2zSimDrO+1Oe6vk5F7XGo0YnsQ=; b=SEsDU1aQn+1CDfMEK0hj/CX4GB
 eZ6nN+4vYE9MitioiAh8GbQ1PTwbJ4hzt5L0Ap3dEdg4eFfBnUI94rK3ZrVVRt6M
 toSfkbrSafy186QCWQcQGWVeRmHcRPK5X/EQkmtgAHBHAFxo0O2QOP8HtMQYa+OB
 9IvYGQqHVkedgVyquvZ0dnXEeZeOfB2VsXYKKwIk6kA0PXS7ATOfkQidfASzBlf1
 r0UIrm+aekOj2kG6QJTAwXvTMsCRWURVfKokFB/Zy1S5wa1CIXtwLdUTyvTAF+L7
 UStDVVTjEuqqVZrVcSj+Z/aHTKz5a+nZVXMTyPLTzRSE9AmD3ZsrYliITC+w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1749900894; x=1749987294; bh=IK/XiAot4OKLe1kIw2zSimDrO+1Oe6vk5F7
 XGo0YnsQ=; b=kJ6P0+1gALJg4urdltWbGwVyqKKV31uFyP2GH3NYwqMft+/rprs
 3EipsebVR/s94815z5TNf8CBgb4RkKRTHchpq3C+hIY2TKIMKYznOxJSFkkJecR9
 sE/eCNQq3z04xnb0JchWskSvLIxfgYGB5udRvvrhrjy8bplPMxHdpw4XLarlPwH6
 h9unvRPc2AE40j/lqFyPP656Sf+x43vlroPkTDb0b2d7AM2ZVlLVVFQ3cOZRZvPt
 wUFMRm1nPuhTB9JhpldgjbwMfKmRn9xq67gEWYqE7ZiQhsVLzQIFAesZC8VOVAfp
 M28wLtKJz3soy+z24J9pn6LNGLsr7Dh+mPg==
X-ME-Sender: <xms:XV5NaANmuE8i43i2vBfglnhZLExr_CzdMf25QiMRov8-6Ix-_6UwTQ>
 <xme:XV5NaG895IlYwHooHAZhXeldexNdn4y10vG423eQ_LbSCyvvjdpCo0_l4Cet7WrGZ
 9GvpjGKWTEpKGBi2-8>
X-ME-Received: <xmr:XV5NaHQ6FKF8_8CkX8XLt6nvoHYAC2FhhFRS18uX6QlMPnwcKuq90oUxfjHQtCYauQmXN3puDL5mfb8KjHRUURux2jos768HkxRdu8UHgWz8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtddugddvtdejfecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdp
 uffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecunecujfgurhephffvve
 fufffkofgggfestdekredtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhho
 thhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrth
 htvghrnhepgefgheelheejieelheevfeekhfdtfeeftdefgefhkeffteduveejgeekvefh
 vdeunecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpe
 dtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgt
 tghhihdrjhhppdhnsggprhgtphhtthhopedvpdhmohguvgepshhmthhpohhuthdprhgtph
 htthhopehlihhnuhigudefleegqdguvghvvghlsehlihhsthhsrdhsohhurhgtvghfohhr
 ghgvrdhnvghtpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgvrhdrkhgvrh
 hnvghlrdhorhhg
X-ME-Proxy: <xmx:XV5NaIuH9IGpJog-Wq-DYDBGVyu8i87UTsYHJbc0n93ChAKhySK0gQ>
 <xmx:XV5NaIdcTMG6VsElEtgeM-FksqQ1_wxaRHARdK4rpV3bUP_xMoqxHw>
 <xmx:XV5NaM1L_8d53uPOU1LWKiD27LS8EEHt-CnUpb7ajvlP8_gP1qGbHw>
 <xmx:XV5NaM8FZ59dEyPSq_C5FzV8mSnYGTebgGeTRnq3OpB5XipRRZudOw>
 <xmx:Xl5NaLuVEx0GaXwpzYPs6htP3HZ5sB0MKvT9C5Ylerv00k6kFqvFc8Cp>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 14 Jun 2025 07:34:52 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 0/3] firewire: ohci: use regular workqueue to handle 1394 OHCI
 AT/AR context events
Date: Sat, 14 Jun 2025 20:34:46 +0900
Message-ID: <20250614113449.388758-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, Last year, in Linux kernel v6.12, the bottom-halves for
 isochronous contexts of 1394 OHCI PCI driver were changed to use workqueue
 instead of tasklet (softIRQ). I have received no reports of any issue [...]
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1uQPQe-0000WT-9c
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

Last year, in Linux kernel v6.12, the bottom-halves for isochronous
contexts of 1394 OHCI PCI driver were changed to use workqueue instead of
tasklet (softIRQ). I have received no reports of any issues related to the
change until today. Therefore, I believe it's time to move on to the next
step.

This patchset updates the driver to use a regular workqueue (not WQ_BH) to
handle 1394 OHCI AT/AR context events. Unlike isochronous contexts, the
asynchronous contexts are used by the implementation of the SCSI over
IEEE 1394 protocol (sbp2). The workqueue is allocated with WQ_MEM_RECLAIM
flag so that it can still participate in memory reclaim paths.

With this change, all remaining uses of tasklets in the subsystem are
completely removed.

[1] https://lore.kernel.org/lkml/20240904125155.461886-1-o-takashi@sakamocchi.jp/

Takashi Sakamoto (3):
  firewire: core: allocate workqueue for AR/AT request/response contexts
  firewire: ohci: use workqueue to handle events of AR request/response
    contexts
  firewire: ohci: use workqueue to handle events of AT request/response
    contexts

 drivers/firewire/core-card.c        | 40 ++++++++++++-----
 drivers/firewire/core-transaction.c |  7 +--
 drivers/firewire/net.c              |  4 +-
 drivers/firewire/ohci.c             | 67 +++++++++++++++--------------
 include/linux/firewire.h            | 12 +++++-
 5 files changed, 81 insertions(+), 49 deletions(-)

-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
