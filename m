Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D4A2B99E5B
	for <lists+linux1394-devel@lfdr.de>; Wed, 24 Sep 2025 14:42:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=+yKLEgi91gdb4y9thbCC9Mm6ibn4eJQmzCE8rvQILKc=; b=HQEYObh1P53lFc1JDxkXfFnJPN
	JVxkt25FnfCB6lf2QGiZGbBSDdULx49Le2ZnKdM5DXw9catRU3HwkclZL3VX0cJ4gDsP9xmqtkuAV
	DLuQyORKxyob1/ZJOqfDQez9/fIofF56AhaWGTypnqufYhkuIsHfsFzyfnocieYi+zIs=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1v1OpJ-0006Ea-FH;
	Wed, 24 Sep 2025 12:42:29 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1v1OpH-0006EP-A9
 for linux1394-devel@lists.sourceforge.net;
 Wed, 24 Sep 2025 12:42:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9MKDNSErECCFY6ABmDdtI9ovPxbnXJPL/ZRBrEEvqgw=; b=YT40oJQm0a7yahFul8+1thkIoh
 8Z34+BQvc6TdGuJDlWwcJVZ1yJctqC9go0fRgn1CB1qGeNZyFryKiD50LRZprUGY/Rk9Kw0JF4KqT
 Mv/cuU4WYup+42btX5tl0qgDPObJJ58UqExbvdw+IeOysF0bUSt9Xy2kyOmXOXKebYG0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=9MKDNSErECCFY6ABmDdtI9ovPxbnXJPL/ZRBrEEvqgw=; b=h
 rDzALbmMf5O0EBXLoU90F5QjNFdH5utN8XFEa2gDhFZlGKzdITk5KhOukmMeG2ZjtKI8V1+o434dY
 NQ6c3YLIxjRKHSnG0/5ydLP6G6lfat7Rj5VVaLz0DQdqdEgGqaJql8peTsLbJ+M6fes2QnSplW10t
 HzRfG3eogtu9JJ3M=;
Received: from fhigh-a5-smtp.messagingengine.com ([103.168.172.156])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1v1OpG-0000VT-NK for linux1394-devel@lists.sourceforge.net;
 Wed, 24 Sep 2025 12:42:27 +0000
Received: from phl-compute-01.internal (phl-compute-01.internal [10.202.2.41])
 by mailfhigh.phl.internal (Postfix) with ESMTP id 158D714000B0;
 Wed, 24 Sep 2025 08:42:16 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-01.internal (MEProxy); Wed, 24 Sep 2025 08:42:16 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm1; t=1758717736; x=1758804136; bh=9MKDNSErEC
 CFY6ABmDdtI9ovPxbnXJPL/ZRBrEEvqgw=; b=RRuTB5pPDxO9X/b6L02DZOeePD
 NcalxzUiP0SHcHkN3DawMnrOkqmZp0PVBrzCKYsoKL3ToMat6l14b0pFFIE37Xje
 XN4J2QYFI0qvM4vaigrW+UlOeJE1ha+tOwAqO/hJvwD5Mt1qii1tNWpTurrQvC27
 2u9fzNdKX/DKtGeqSqX2NFql/LREkMwjqV4K1OcknGr4X/XeRNtLeRpr0i6kozZW
 0u2slsT12htuiUrnqppSrZIfVAiDuahHb8sb5arPM/ii43gGPDxRCHxFFzEz3IiS
 h/JKOUZxueJFSF3OBdGH/oSp0u3HRP0Ln/la60XEktlsXNzpx3BVzyCxlQrg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1758717736; x=1758804136; bh=9MKDNSErECCFY6ABmDdtI9ovPxbnXJPL/ZR
 BrEEvqgw=; b=hQWJlbtVayZ/ivETxim5mGTHXqcAQV92s72C6uq2GIK2chD0KcG
 Egw/NxgXKbtCJYDM4XBVUowp9hqwfcin/wHzzlZw2jFxCwYNQ67PL4QlBi++Cp4n
 FdifHedWHehkG5ds3GK8qne2GDD6OAblw/72P9SK0KhVrifjjxtFm6Ef7dbnwrj2
 rDWY/TNXPcYVGrRxTRHoBvDNT4cCxMJ83Q87VOfS6o5jHWEKge8+RH8kQQPcJ6FH
 hsgTTynqoIP2v0+E+7k2mO24HQfHRB/c9YegiWhJWSLNMOUL/vsGUkfIdDgUR7Db
 hxXlS6N5QPB1ra+ZgfRX4cTIqdHp6JVWwIA==
X-ME-Sender: <xms:J-fTaJ4AtGrz5VteXtLjpPORnA2PXEcGwceuVSovBge9E0fxA76fEA>
 <xme:J-fTaE2AtOQMZfqCYpa3mRzns34SR4Q5t-Ch0nkXzp700FKtHge9qGKKdV6R6vBes
 M0qLDiKS6xKpoq9ScOZ78gT8fn15DPWL0UX6RZd_AeU76QyprRLGxQ>
X-ME-Received: <xmr:J-fTaIBM4oLqaBuYbTEiVDAZBtXvRaOENp7wzE78LOt85bFvMURGjfeu-FAuwqH6ANnlxBmL7KclDrkPYrPi3nWuN3ENIREluUgG0tDFfDv7Cg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdeifeeigecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgggfestdekredtredttd
 enucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihes
 shgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepgefgheelheejieelhe
 evfeekhfdtfeeftdefgefhkeffteduveejgeekvefhvdeunecuffhomhgrihhnpehkvghr
 nhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
 hrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgtphht
 thhopedvpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehlihhnuhigudefleegqd
 guvghvvghlsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghpthhtohep
 lhhinhhugidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:J-fTaO19rS4z6z0ZhdOROikHSZe3nbLf_jp5la293-dyt6NUtK0m_A>
 <xmx:J-fTaKs-Ejc8MnXYx2eQGqV_8AJm5H8WqeLvbHZ8jTR4e_k1ljDsSQ>
 <xmx:J-fTaG5IiJi7SauUwYoeISM2t6PSl1f1590HCKL-0Z486nLo8tf60Q>
 <xmx:J-fTaDKz_8C8veirTFO60pLS1l4DhsFA6lrYhPHuTCrpPBSpY_zTEw>
 <xmx:KOfTaKswu1QQ7ZNrBAqGlBYzZQzQX8qtrPNObamy4lP8QWkDiH5ETe7o>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 24 Sep 2025 08:42:14 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 0/2] firewire: core: 
Date: Wed, 24 Sep 2025 21:42:10 +0900
Message-ID: <20250924124212.231080-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi,
 The patchset that serialized bm_work() and fw_core_handle_bus_reset()
 was merged without sufficient consideration of the race condition during
 fw_card removal. This patchset reverts some commits and restores the
 acquisition of the fw_card spin lock. 
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
X-Headers-End: 1v1OpG-0000VT-NK
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

The patchset that serialized bm_work() and fw_core_handle_bus_reset()
was merged without sufficient consideration of the race condition during
fw_card removal.

This patchset reverts some commits and restores the acquisition of the
fw_card spin lock.

[1] https://lore.kernel.org/lkml/20250917000347.52369-1-o-takashi@sakamocchi.jp/

Takashi Sakamoto (2):
  Revert "firewire: core: shrink critical section of fw_card spinlock in
    bm_work"
  Revert "firewire: core: disable bus management work temporarily during
    updating topology"

 drivers/firewire/core-card.c     | 38 +++++++++++++++++++++++++-------
 drivers/firewire/core-topology.c |  8 -------
 2 files changed, 30 insertions(+), 16 deletions(-)


base-commit: 19e73f65940d3d3357c637f3d7e19a59305a748f
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
