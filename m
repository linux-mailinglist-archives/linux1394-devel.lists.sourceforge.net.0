Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AD40CB876D4
	for <lists+linux1394-devel@lfdr.de>; Fri, 19 Sep 2025 01:55:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Tc6qbicegFU/IBJFAzGEEHF8mY4dtXRhueEeeaJUONo=; b=JNA5t6YNAXyDebsRsb5esOriEV
	Js5gbpkpSBCfl8f87Bd7swxoio080vwDocwkY6h4joNY7gWbVG27+Iuz8PHoEY/Q1d17vjHr1zuUh
	m4hB9GEvvp9magXLKk+u/NMfnZXlVoQQjeIsdPppEIMRvs/au/1Tg2uXEbHU4QMNrqgY=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uzOSp-0005TI-ES;
	Thu, 18 Sep 2025 23:55:00 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uzOSn-0005Sx-AW
 for linux1394-devel@lists.sourceforge.net;
 Thu, 18 Sep 2025 23:54:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JXjjbUEqhHDFtZPE4qxfZxl67VIDcJ7T0Luenviwv8U=; b=UgrAvrrpcmcAU/M59dH5ZziKGf
 F/zVA1JDZnKbkgPzP+ULNDnb3pptyV3QZ9LjZzznDZY992sKtdZNOuwEyYKNa2jGMQrNGCqh92YFz
 ZmS2zmCB7oIAi9J4p9OJqLozBULou04C5r71fxXYznBFafQl3jqtk9CwQHkd5rQTCFZg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JXjjbUEqhHDFtZPE4qxfZxl67VIDcJ7T0Luenviwv8U=; b=bzpcoCMG3BX6C96W6aX9hcSikO
 4urr+jka6abWthrUlLmkzC1zxSmfF348ooGhgawSqRLyUMFGEPdi64naZWm1Uou16muQkPrF1D/LZ
 FoK+Av+cCnAUjNgRTqGKhrWHQtb9dBCpIkPA+A20cyWUItwv9Fig/HNSXudX5B2ayc4E=;
Received: from fhigh-b2-smtp.messagingengine.com ([202.12.124.153])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uzOSn-0003RR-Iz for linux1394-devel@lists.sourceforge.net;
 Thu, 18 Sep 2025 23:54:58 +0000
Received: from phl-compute-04.internal (phl-compute-04.internal [10.202.2.44])
 by mailfhigh.stl.internal (Postfix) with ESMTP id E3A527A02EB;
 Thu, 18 Sep 2025 19:54:51 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-04.internal (MEProxy); Thu, 18 Sep 2025 19:54:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1758239691; x=
 1758326091; bh=JXjjbUEqhHDFtZPE4qxfZxl67VIDcJ7T0Luenviwv8U=; b=L
 2dmJe8Um0BT+/9U2qhQxqSez86kh86SfHLxStcFYGlvxWiqFj1deztTmp+qvW+oG
 kkbMOgD3ap5wgczOabVTByNl+tE5cKplNN/OeHgJ7d2U4T32lOQfoPLl10ykjamn
 h9OeaxHQMOxbahwfdJVaECDeo7BdC0ejJH0X/GotK7jhdk6pXnv/T9o6ol9iV3bM
 SRthV4H/lN20w7moVK00IRHISzq1iwB+Ze6jKS9EwdAfrHFGntPWOMunSKJMskri
 EI5bCABaYSq81yEk51zOxeELPk/h7SzNnkAYlkbiJ1/CtSzTIHFSU3/3QdGideex
 dQAv9siljt4bQ+ujGpDmA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1758239691; x=1758326091; bh=J
 XjjbUEqhHDFtZPE4qxfZxl67VIDcJ7T0Luenviwv8U=; b=mdDt1WGCA+Su6241R
 syfDPSP+fgfwksDtLGY2PH6vrqX8dGnlMplZPvfZ8ZuzMJj1z28fx/gCrxhwgOOM
 owU1IpopgPo2neJrJsmPfmgI0qZzUamL//i6Qx3rCuT17ZS7372JCdk+jwPAjc2o
 y6ovDmhiY4TrQ05dPzCWnWMqvZ3qoSIxvjkIqnvcmlzPPwzKi3fTJIqquZQXOSuS
 FoLVgfI6+duGO211AtsiKgJnAhOaIi2CA7134SS4HDwjjpYcDuCqx1ns7bTGr4tt
 p2mU2mzaI2B9eOt3z0InIaNycAuqJZGhDV+rVKRaEUXSNjQIIQe3QGt5G9eCfov8
 0HMGA==
X-ME-Sender: <xms:y5vMaNnCyvvo4FaxFg_ds3ouViuepLzkbPHL1tD5Fuh7BD6p_A_9qA>
 <xme:y5vMaBxqNhgMvRYLKoG6jfpJzNeajCdWGSh_hDc9_vqa7QwGP-vkhWFXJ0qe_pxFE
 REhCbU_6yJUj7BzH14>
X-ME-Received: <xmr:y5vMaFlB6Ol5Ig56o7q74hM2pPcSEeyJUpW-8s86KdvtRtU2ASUSUADyCT9aW5Bg-MiTWX4nV28AUm8ibqNAzfrhdwSsohyIpLXIOdNK8tFnw0M>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdegjeejtdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekredtre
 dttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhh
 ihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepjedvteetudfhie
 dvheegiedvkefgkedtleeftdetleejkedvueekheekvdfggfevnecuffhomhgrihhnpehk
 vghrnhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrih
 hlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgt
 phhtthhopedvpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehlihhnuhigudefle
 egqdguvghvvghlsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghpthht
 oheplhhinhhugidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:y5vMaKd7OopXATFBDZp3aMjIf19MM24K_RIyJYi0qLIPNl5cjyl_aQ>
 <xmx:y5vMaLqnxOcdPH57yZYzxX1PmSNAHN7hRULm1M738Gf9xb2o_079VQ>
 <xmx:y5vMaI6OYn1pZ3Ce67bGcWpWKOepK01dndwaRIcqWrHAtVHla65q4A>
 <xmx:y5vMaBrKvGYXYuv7-kajUSXGpEIS1ftQORq9KM_G3VGRzK2JvhihUw>
 <xmx:y5vMaJLRG-oKs6buMbnA3Ppelr0_32pSdmzJ3_RJV8LHWvtLAGcuip8K>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 18 Sep 2025 19:54:50 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH v2 0/6] firewire: core: code refactoring for work item of bus
 manager
Date: Fri, 19 Sep 2025 08:54:42 +0900
Message-ID: <20250918235448.129705-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250918230857.127400-1-o-takashi@sakamocchi.jp>
References: <20250918230857.127400-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, This patchset is the revised version of my previous one:
 https://lore.kernel.org/lkml/20250918230857.127400-1-o-takashi@sakamocchi.jp/
 Changes from v1: * Ensure to initialize local variable 
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
X-Headers-End: 1uzOSn-0003RR-Iz
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

This patchset is the revised version of my previous one:
https://lore.kernel.org/lkml/20250918230857.127400-1-o-takashi@sakamocchi.jp/

Changes from v1:
* Ensure to initialize local variable

Takashi Sakamoto (6):
  firewire: core: remove useless generation check
  firewire: core: use switch statement to evaluate transaction result to
    CSR_BUS_MANAGER_ID
  firewire: core: code refactoring for the case of generation mismatch
  firewire: core: code refactoring to split contention procedure for bus
    manager
  firewire: core; eliminate pick_me goto label
  firewire: core: minor code refactoring to delete useless local
    variable

 drivers/firewire/core-card.c | 335 ++++++++++++++++++-----------------
 1 file changed, 177 insertions(+), 158 deletions(-)


base-commit: e6d2338b6f3e522872f3a14fcc5e5de2f58bf23b
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
