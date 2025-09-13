Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AF52B5605D
	for <lists+linux1394-devel@lfdr.de>; Sat, 13 Sep 2025 12:57:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=y1kZDooRS+PWh+612q4R6dxn3goCIPvTU6quWAilMQ4=; b=b3FihVWsNGPkxzQli2kD+ayjvi
	w/IXPWC1BKMNufD7Il+UIcSkHpCyJznGjNzWZkD1n6IpDEruVlSFUwMEZJ5J9PoCtLmwduDSr7Dg7
	WP0g5qP1Ua92qkKT4CifdWC3QYFs9eKpeyP/VVv2s6u9smSG5mtMr4d8Tf/A4unME9nk=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uxNx3-0005wP-5Q;
	Sat, 13 Sep 2025 10:57:53 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uxNx1-0005wF-Re
 for linux1394-devel@lists.sourceforge.net;
 Sat, 13 Sep 2025 10:57:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ke1+46UnlvWlNxeH+CbOubd1oTFRZM0wqYyrcYtRd7k=; b=LtisCDeQsJWXqMNDiT+2kT/50V
 pNxus3n0Jvk+eDR/yw1QGxtiykOtyV3a20rJrB6lyzYRxnF1P1xKK+METHuKeAbMPUJdmDVBNxpqe
 qdaQcv5sazbdmQUh1gRw3ol2PAHk+Ty+ubF9WxcpPGfsQCsa4ViGqaKJj4+KJsWmjNfg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Ke1+46UnlvWlNxeH+CbOubd1oTFRZM0wqYyrcYtRd7k=; b=C
 BamlyyBXn04ZK4RUcHjW7u1qqMhdOzRRHmO91rSBBicAbzIS2NtNMSmFmCM0WTYvJ6iWec8fKBtrw
 6AP9DMUWFzshAalwOw4kW0CSPxnzin+Xe65kDw8sjd3hMAZYGJLXCt9PkaKp1pALVAJBQsIVuhhYo
 wypKrZ58nE9Lj9nI=;
Received: from fhigh-a1-smtp.messagingengine.com ([103.168.172.152])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uxNx1-0000pz-FM for linux1394-devel@lists.sourceforge.net;
 Sat, 13 Sep 2025 10:57:51 +0000
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
 by mailfhigh.phl.internal (Postfix) with ESMTP id D296D1400124;
 Sat, 13 Sep 2025 06:57:40 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-06.internal (MEProxy); Sat, 13 Sep 2025 06:57:40 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm1; t=1757761060; x=1757847460; bh=Ke1+46Unlv
 WlNxeH+CbOubd1oTFRZM0wqYyrcYtRd7k=; b=C+ZDDDRpUZtvXR2mFqApju+Ir6
 nGIwbSbkF55QoCGNKLx9cN5yHVttd9K6gce1w/8r0x2Y7/bEa7rYrPcdQN/5gxu7
 m/uy/HuPEglfvJvd9TZmZqzd8IoLKm6Odb+5NiXy1tCN0QOZ+O7zqNouap5EVikv
 dVpshgtxEVsKAYqtAbwCdcxKqIFzflxAaFc2H13C8cNyJVy4N65yJuu97RxKZztA
 JBD6hgw5PvMqqbCcHGNEc/2jGN6esYz1TlZjUgzdPHtbsA+sJEdbr6WXu4zQqMw/
 0Nw1C+o3t4M5+jzXX3Oo2y8gvPDE5jtlZgkaqHrGZ76d1sY/AIuxrO1idNTQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1757761060; x=1757847460; bh=Ke1+46UnlvWlNxeH+CbOubd1oTFRZM0wqYy
 rcYtRd7k=; b=ZeeTkr6cRzdR+EX3FuqwUSr1YdrcxII5DJW7EBjZJsVI6p9o5Uh
 fU/qdZDnantKcav8pECAaT2pONfaldDs0Y7zfkiAuQLRS/t+WpM9cNiqSGL5lbAs
 m0+1cUymarO7SHb1kpXeOmDDOEGg/DqGHvrskBaCI1zarhKqQZIE9W45vKwpNRk/
 n7N/CFnZvjMTwnWszr7MX/rz5dmQUmztMDeVuWIyrkcLF9ythRv2X3AZXP17JAah
 vSdmtM+fh0WtxCeqVsuZaVapVA08oEYIBNUCDiaRGE/S/6v3lmRZ7c4PzUzH+Bbc
 1If4oIGP6FuJBvnd5kt2cBI8aLPU62/Bg4w==
X-ME-Sender: <xms:JE7FaAz19PgKvVG1AM-cJil4hJ5yHFtNEGxQO9YCNhCrdTtWHet1QA>
 <xme:JE7FaNObS01J-ivzeLK2kasGCmzNjNo-OEpx-NwYtLrVSsFdicuHSMjSjXd6Zvzt1
 tBlgkv1ajZrXjn8YZE>
X-ME-Received: <xmr:JE7FaETWTBWEf4ElLeEWoNX0PligF0uOk974fjTutDpKJ_DxlLQHKQL81NxznajFQtELchrpaZLFcBgpB2XkPnSHY3TMrDFA78sP3Pl1znnZog>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdefudejhecutefuodetggdotefrod
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
X-ME-Proxy: <xmx:JE7FaLYFfXRVpiXDF0IJ1StzhLS1zqBTez9dUlk_UNQoS6fnjV8dHA>
 <xmx:JE7FaB3q9rXrW9s7XW526_Hdiwt2q5HPWYc2ehQnIIhQMInWJHOadg>
 <xmx:JE7FaLXEsX0OKpDHq05McrmYXZ69CE3j2sjMArJD4Qlz0KNJt6nGrA>
 <xmx:JE7FaLXiEXGyqWEm3EWllr7LmTDqvY7Xp5EVUYhDRoZcJp0qJcqhVw>
 <xmx:JE7FaJ1h3BZ966-uUpAP2nHjzSo_IDoVHTicQgtU1w8-dZrkFJrbbgCh>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 13 Sep 2025 06:57:39 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 0/2] firewire: core: use macro for magic numbers related to
 bus manager work
Date: Sat, 13 Sep 2025 19:57:35 +0900
Message-ID: <20250913105737.778038-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, Some magic numbers are used for bus manager work. This
 patchset adds some macros to replace the magic numbers. * 0x3f:
 BUS_MANAGER_ID_NOT_REGISTERED * 0: GAP_COUNT_MISMATCHED 
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
X-Headers-End: 1uxNx1-0000pz-FM
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

Some magic numbers are used for bus manager work. This patchset adds
some macros to replace the magic numbers.

* 0x3f: BUS_MANAGER_ID_NOT_REGISTERED
* 0: GAP_COUNT_MISMATCHED

Takashi Sakamoto (2):
  firewire: core: use macro expression for gap count mismatch
  firewire: core: use macro expression for not-registered state of
    BUS_MANAGER_ID

 drivers/firewire/core-card.c     | 14 +++++++++-----
 drivers/firewire/core-topology.c |  2 +-
 drivers/firewire/core.h          |  6 ++++++
 3 files changed, 16 insertions(+), 6 deletions(-)


base-commit: 136d8a6f73fee0686d163dca91fdffb35e25f092
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
