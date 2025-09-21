Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F482B8D30B
	for <lists+linux1394-devel@lfdr.de>; Sun, 21 Sep 2025 03:23:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=lAW6gB4Gb7mol3VxA6jcIL2PzdVzKk2KBZ9UsWSGp/8=; b=FzUdYsMe/G+584QawBIrBvp1nQ
	lS//D7uWX14bfwNZoUVHZdy7/CRt6MDrk17pMOYmLAU5zhHHi6qlZERgAjWYCHUkW2tOc/SyVW5/H
	GCSwMZT+f81oYkEUgXbPxyyLvdqzI1HMUzNMqPU0WZfkVdGFsff7M8nlxqtNZSeln1is=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1v08nF-0007ty-RS;
	Sun, 21 Sep 2025 01:23:10 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1v08nE-0007tq-Lf
 for linux1394-devel@lists.sourceforge.net;
 Sun, 21 Sep 2025 01:23:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/TAFCTU731s4phS0aGzHFMTzvWaEIJwXNgmuW3iqYcQ=; b=UKoeOFVwqCu//9xQNrSNghoNOi
 G7Q8Xh5b4tml2qv5iimAj1QjU0HasXK6RaDwBbIsu/mlMQG4izsyaJL2xiEVtzNyyyF6vKFpBZ2tm
 +4JpPkS3z1OuSwD1jkzaapAl+uuJtgJX3y/TqHwLxqC4lAW5/K3Af9Vp5PHskZGH/8F4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=/TAFCTU731s4phS0aGzHFMTzvWaEIJwXNgmuW3iqYcQ=; b=l
 CVv1ocOqyhPAk6U/41O+2TcztFRUvBnSa82n5K6ECXc284LsmkbDWfKmvtNSLS8FYBe8xPLEZ6GYn
 gtWc1OrgwVprHaY4HCMFZ93w6OhRenuvrDfQ90q22cMz7XK/CBmvIVxvsrTGdzwrqvPV6NrfIJIF8
 tOo4bmdHUCt6kmC4=;
Received: from fout-b7-smtp.messagingengine.com ([202.12.124.150])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1v08nE-00052N-TB for linux1394-devel@lists.sourceforge.net;
 Sun, 21 Sep 2025 01:23:09 +0000
Received: from phl-compute-08.internal (phl-compute-08.internal [10.202.2.48])
 by mailfout.stl.internal (Postfix) with ESMTP id 5DCD11D0012B;
 Sat, 20 Sep 2025 21:22:58 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-08.internal (MEProxy); Sat, 20 Sep 2025 21:22:58 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to; s=fm1; t=1758417778; x=1758504178; bh=/TAFCTU731s4phS0aGzHF
 MTzvWaEIJwXNgmuW3iqYcQ=; b=BzuLLFxp70OFjqPGIEXrbAh8vXBaKT7dElBAE
 yB9ulbqgcfQlGRYW4Pejske0PuUHUZ0wyQqcwqIVDTu8PJRFvCWAHtV+g+hxOn8Y
 maW2f8d5xkoespztAMFeB2DX4p2+DKfRWPFggkaZG65wfpgtk1m+86YenP4ETLV6
 KOy5b/Q4KtupvODVgyPxbip0OkyLQdRVfPg7yCPTHAyD5pm8J7BweI7tzJFoDJmM
 WdEYzVUoE0YgxfuaxsHY0TD/yDS5GYdzJxqSXAswqbouScGZqFy6lBEczIfYKSbK
 NiIvo4KNBbKvcyL+Ss+1GtyHX4RH4Qh9TPxawb6iBgNC1rhkg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:message-id
 :mime-version:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1758417778; x=
 1758504178; bh=/TAFCTU731s4phS0aGzHFMTzvWaEIJwXNgmuW3iqYcQ=; b=U
 xZGmyfULjpzPUvXp4Z1L149wHkZ6jHnUyK5ogTOaz/S15jLEsExpI5Pv/Ge2JfNM
 qW+cv93WAGBPCQ5rZ6nPrj+3MvNN0bhN41u+wj76pS5nX4oZmxM/L39ZCVerD524
 6/pXozclqi6rdcdXc+oqPipr569j5Vl2NaREeBABYUt9Noa1BIpkO+LDtVUsbi2o
 fhHnGAkQZ2BafBxM9GGKZP5vlP6PvC4c3hSh4thgHAPcLuwx4WwFPqHegypTzvSu
 yJfz1EvkYAW6MbSd/TwW/bV3NTXvZrFfesDBprc+ZGzDfubw3RvzgUnOAVOq3WVB
 dvA6d5diTvPNusQ3HUAqQ==
X-ME-Sender: <xms:clPPaGKfi2du7-gKbQOaFtWVMBwgYyFNlPZBJmbR-JXr2awh4t6Axg>
 <xme:clPPaFBkXtwYm_YAohRIojK11qg6gR8YZh1A2_nqzQNuw5k9HMaDnUwGMu5izNdQZ
 8bQNhWdG1nqJU84oAQ>
X-ME-Received: <xmr:clPPaDoXooa4uPrnZfUL7T1sGsvbO66sjO_EbtYpSDmgnmtAyNHz50T2W8xzkwsIEqb1yipZ306qEaY7unP03n9WHNptWQ1px_6j>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdehfeeigecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecunecujfgurhepfffhvfevuffkgggtugesthdtredttddtvd
 enucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihes
 shgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepteefieetfeevgedvgf
 egffehteeljeekkeelueegfffftdfgtdetteekvedvvdfgnecuffhomhgrihhnpehkvghr
 nhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
 hrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgtphht
 thhopeefpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehtohhrvhgrlhgusheslh
 hinhhugidqfhhouhhnuggrthhiohhnrdhorhhgpdhrtghpthhtoheplhhinhhugidqkhgv
 rhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplhhinhhugidufe
 elgedquggvvhgvlheslhhishhtshdrshhouhhrtggvfhhorhhgvgdrnhgvth
X-ME-Proxy: <xmx:clPPaIgJLRdzdn24wkOrci_-CcHu5q5_Lmu48LmJVOR3a2zGmfP1aA>
 <xmx:clPPaID_S3HqEO4cNEdMw1JSm90o3LuG_1-xRSg5ZHSvvx4EWMHzQw>
 <xmx:clPPaFHX0nxfmza2GubeZMUcrJ5mjqlXT8BomI7SkPiq_5GaYNfO1Q>
 <xmx:clPPaIKBBCkEvJEhswM7M8hzGvqthT4nuXhZgsGXTWXR5HljEUgyEQ>
 <xmx:clPPaP_z5gDAH-Ba4kHqy_tYhvcKO6EmNMv1NrDLDxwER-YCiWVMw19U>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 20 Sep 2025 21:22:56 -0400 (EDT)
Date: Sun, 21 Sep 2025 10:22:55 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: torvalds@linux-foundation.org
Subject: [GIT PULL] firewire fixes for v6.17-rc7
Message-ID: <20250921012255.GA49526@workstation.local>
Mail-Followup-To: torvalds@linux-foundation.org,
 linux-kernel@vger.kernel.org, linux1394-devel@lists.sourceforge.net
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Linus,
 Please accept a single patch from FireWire subsystem
 to your tree. It includes a fix to enable userspace applications to recognize
 the functions added in v6.5 kernel as available. This change should a [...]
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
X-Headers-End: 1v08nE-00052N-TB
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi Linus,

Please accept a single patch from FireWire subsystem to your tree. It
includes a fix to enable  userspace applications to recognize the
functions added in v6.5 kernel as available. This change should also be
applied to existing stable and longterm releases.

The following changes since commit f83ec76bf285bea5727f478a68b894f5543ca76e:

  Linux 6.17-rc6 (2025-09-14 14:21:14 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/ieee1394/linux1394.git tags/firewire-fixes-6.17-rc7

for you to fetch changes up to 853a57ba263adfecf4430b936d6862bc475b4bb5:

  firewire: core: fix overlooked update of subsystem ABI version (2025-09-20 12:17:50 +0900)

----------------------------------------------------------------
firewire fixes for v6.17-rc7

When new structures and events were added to UAPI in v6.5 kernel, the
required update to the subsystem ABI version returned to userspace client
was overlooked. The version is now updated.

----------------------------------------------------------------
Takashi Sakamoto (1):
      firewire: core: fix overlooked update of subsystem ABI version

 drivers/firewire/core-cdev.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
