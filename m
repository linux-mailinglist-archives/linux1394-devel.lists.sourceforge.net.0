Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 95B94C6150F
	for <lists+linux1394-devel@lfdr.de>; Sun, 16 Nov 2025 13:51:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=+OYdcx3uOtYHUmh4fFCrt2HZmtqu5o1w/8KxnAk6REE=; b=TghFM59kEp9WSd9mVr0pywOLF6
	w+n1gXPCqLCiWdEWA6o5QnDj8kjGbkouARUtO3exGKBI4vXs6WOHQcQrsyOsrqeuIGuUoM5ISpZRr
	B6ya6h3L8XyNtzhhwkg5TCnMR6ljXA8EvC0C/HEDmZQ3oJhMa5bIZDuESW7yQZFtAX3E=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1vKcE9-0001u9-Jm;
	Sun, 16 Nov 2025 12:51:33 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1vKcE6-0001ty-E4
 for linux1394-devel@lists.sourceforge.net;
 Sun, 16 Nov 2025 12:51:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OfIaPufCrWWr2HRdk3y6IJspYdmlePykqKhtuKe5D6I=; b=LUpc/VDr2ivJGdZyDoKUtmhbI8
 CJu1NHipNx8JmN+osq/6nJV9+uvFTnJGJmpfBo9dDS7ogrcRw1ubXo74eMzhsaF874Ha2dS6ajl80
 cNh71zi5inXVaG90eqk/iV5D2XlOldOmG59UvkJajEzjkElhlfQFD/L5W07FFdL7xgX0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Subject:Cc
 :To:From:Date:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=OfIaPufCrWWr2HRdk3y6IJspYdmlePykqKhtuKe5D6I=; b=g
 AGOjlhYjSwZafC3K/W/GVtJ7Sz3mvG8Hgd8Ez9U/jA5tbRZqpp225YpfUz0BOGJZHfGQq/gCs/hXt
 2+7JPWhIZAgtDmCDcCgc3FHQGguS+ZPQv5AMWQNKGzqiSuWLnIMQMjjZP6D6ND4/sAI8VWnZQyw1A
 fULL/Pnll1dxGKNI=;
Received: from fout-b3-smtp.messagingengine.com ([202.12.124.146])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vKcE6-0004Xw-1l for linux1394-devel@lists.sourceforge.net;
 Sun, 16 Nov 2025 12:51:30 +0000
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
 by mailfout.stl.internal (Postfix) with ESMTP id 772311D00094;
 Sun, 16 Nov 2025 07:51:24 -0500 (EST)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-06.internal (MEProxy); Sun, 16 Nov 2025 07:51:24 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:content-type
 :date:date:from:from:in-reply-to:message-id:mime-version
 :reply-to:subject:subject:to:to; s=fm3; t=1763297484; x=
 1763383884; bh=OfIaPufCrWWr2HRdk3y6IJspYdmlePykqKhtuKe5D6I=; b=j
 fu/uFylASZFp9UDzh4/h4GBvuyOqh92cYG1wLTMoiapRtLe4AHA1Bj4S1jq5mx4a
 depMIaoNME4uiX28JwjojF04VcuMwgqtEGgTJFLZYLGrjqMN3KtzA6W0BwOUItnx
 sdGcCHd4Zfjb9aCnwVPOrTvNsG4olxMhlTrrlOZLY4atZYYEkKHUdszjW+orfTK1
 LLOYi8tCHgUchIt9lJYlcN3cbF9N2askYEoDkZbNsSRDDJT2y690K0roVVR8pXWE
 7v2a4iLLaD/ipGdz92IjSYnP/+gx7oRQT+Cwx/ZCj/RwWjNFnMHqVYOydR1nTr0G
 iP9N/rP4hllQZPuboH3uQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1763297484; x=1763383884; bh=OfIaPufCrWWr2HRdk3y6IJspYdml
 ePykqKhtuKe5D6I=; b=o5ukq+ZNPeQ3b3DGzMU/gyH62ouOv0pLy0Cj51VAjFKH
 szQ7pXppmk0WTe/L2qOMit2pxRPexbrBv3mRmtZBRLooMyMwbX6P51sSDnsEORsH
 kdcnKtxl3ocYTnzZmvynNtmW0NGFio2oY00Dh7/mLiiATjf+5tIfR4lkvOvdPQbo
 e+bwcbCPLMS6YYz0vqAVuzqiKLeRJwPMCKmb/aNNkIwAwBhp9l632QHcc03k7qah
 MkwttvZlTUQ+UATjTfvY8Kwux1J8nywAcTh5SbkzRArFvQP5v/SlL7F20UFHAmAx
 338ml+L/ct+8YMG00jvHPBcoycFP5sKsLsSlQAYTFQ==
X-ME-Sender: <xms:y8gZaTZupiR21POTcfAU3OpERICFdBJaEEOliBfxHkUnwFKGVQbhzg>
 <xme:y8gZaaL0c3jLVfUtwuZ-hhwxQd_vPniaQ_2mzixosmxE5DHb_jCPz4fLFcdLbEuZt
 gWOh8SyffuMf0hvBBk7e6HyJqdUodBCdf8sF_yJ0vXd84X7a00lA5w>
X-ME-Received: <xmr:y8gZaZAw4uK1gGNXS_mUwWXeQ-3vu28CruXNusd-JaQjv7kabJ26juzEm0kwiBk-iJ2eHSFQWAmySfN_GOND2dKMOUFNj-TWh6Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggddvudehiedvucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfggtggugfesthekredttd
 dtudenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhh
 ihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepledtteefteehue
 ejueelvdekveegheefteeiueelleeggfelheeiuddvteehieelnecuffhomhgrihhnpehk
 vghrnhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrih
 hlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgt
 phhtthhopeefpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehtohhrvhgrlhgush
 eslhhinhhugidqfhhouhhnuggrthhiohhnrdhorhhgpdhrtghpthhtoheplhhinhhugidq
 khgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplhhinhhugi
 dufeelgedquggvvhgvlheslhhishhtshdrshhouhhrtggvfhhorhhgvgdrnhgvth
X-ME-Proxy: <xmx:y8gZaXqOQYHK5-4kx9ErQ2pNeP4JaqykTdECJYUMzxJxnmdldE9iwA>
 <xmx:y8gZachPNoEDUEa4Q8u1-13a7PyB3Lrl8KEwXYheJgDQMMNn3YYbDw>
 <xmx:y8gZacBoXC8YHNU19UFDiq3taQDbUlM9SsLrvh5-2xRQBevRb7Lrcw>
 <xmx:y8gZaZEnX6_1QkZGdzgTeGCt-yOoJccIUyFGUxCv8qiVUgyMvO9H0g>
 <xmx:zMgZaX3oYGzPVbgB4oh_8biPYbXmPOZPd2imeiEVD6wkH3qIZEP7-sFA>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 16 Nov 2025 07:51:22 -0500 (EST)
Date: Sun, 16 Nov 2025 21:51:20 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: torvalds@linux-foundation.org
Subject: [GIT PULL] firewire fixes for v6.18-rc6
Message-ID: <20251116125120.GA650456@workstation.local>
Mail-Followup-To: torvalds@linux-foundation.org,
 linux-kernel@vger.kernel.org, linux1394-devel@lists.sourceforge.net
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Linus, Please apply the fixes for FireWire subsystem. The
 following changes since commit e9a6fb0bcdd7609be6969112f3fbfcce3b1d4a7c: 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1vKcE6-0004Xw-1l
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
Cc: linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi Linus,

Please apply the fixes for FireWire subsystem.

The following changes since commit e9a6fb0bcdd7609be6969112f3fbfcce3b1d4a7c:

  Linux 6.18-rc5 (2025-11-09 15:10:19 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/ieee1394/linux1394.git tags=
/firewire-fixes-6.18-rc6

for you to fetch changes up to 1107aac1ad7f445a83604b14af7be47f1a795c66:

  firewire: core: fix to update generation field in topology map (2025-11-1=
6 21:30:26 +0900)

----------------------------------------------------------------
firewire fixes for 6.18-rc6

This includes some fixes for bugs to generate topology map, newly
introduced in v6.18 kernel.

----------------------------------------------------------------
Takashi Sakamoto (1):
      firewire: core: fix to update generation field in topology map

Ville Syrj=E4l=E4 (1):
      firewire: core: Initialize topology_map.lock

 drivers/firewire/core-card.c     | 2 ++
 drivers/firewire/core-topology.c | 3 ++-
 2 files changed, 4 insertions(+), 1 deletion(-)


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
