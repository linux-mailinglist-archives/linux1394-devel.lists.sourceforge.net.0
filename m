Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A2CF3B9A00C
	for <lists+linux1394-devel@lfdr.de>; Wed, 24 Sep 2025 15:18:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oKWqcjQv4+qxapVHN1k2du2nvZ8fuoHUM5GHVJl48Nk=; b=eRtLi2tqFDdX/AmX2wpQ9UKCrd
	0R1RRToX8aMzaBTQRgc5RxmiBAQATjTWfp8l/wMAv4SOlSBTGZqPYjeJIbkdffdHowmGkhbKgqunk
	N7zrA+PsBb/kpQoHklrDnPYSoSdoTSscJvcSiVWIDlEX21WXB8Ou3sGrkUbdPCWPV9cs=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1v1POI-0007Xj-N8;
	Wed, 24 Sep 2025 13:18:39 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1v1POH-0007XT-Co
 for linux1394-devel@lists.sourceforge.net;
 Wed, 24 Sep 2025 13:18:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XThZObXpOx3mRUMR2g5aaL1x6qimlG3yoThumN9ezRA=; b=PZDxAwFyAjwC39iXEkX8Ry/GjW
 jEjW64vvF/540G4wBFVnXTeZSXWIX5MxI4QNcHPBs0jh34pAF8/JoTbUAUqffyjHnjqxG+vX4pcut
 gRIOzFBx6rPj9NlWFv01djPB6KeEBa7h8zVRPZLGTuZ1/dao2LJTxg8llZ9Fe3igAl/s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XThZObXpOx3mRUMR2g5aaL1x6qimlG3yoThumN9ezRA=; b=Os+Yt82Px3+l+DaKPF+H9aB+A5
 98VOXw1CInU3wKNPp6wos/726tpWfnxRo0q26c0VtsbAzgQzfoVMCSuFMA61kcsiJeXZ4QbAanXNz
 wd0mLQXcLs3UttC8ArYbX2KhUxxiaQpXrEeVs0edjgcV8gwDzjVwb427xBIxp+AJ3A6A=;
Received: from fout-a7-smtp.messagingengine.com ([103.168.172.150])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1v1POH-0003Md-LM for linux1394-devel@lists.sourceforge.net;
 Wed, 24 Sep 2025 13:18:38 +0000
Received: from phl-compute-02.internal (phl-compute-02.internal [10.202.2.42])
 by mailfout.phl.internal (Postfix) with ESMTP id 21321EC0143;
 Wed, 24 Sep 2025 09:18:27 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-02.internal (MEProxy); Wed, 24 Sep 2025 09:18:27 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1758719907; x=
 1758806307; bh=XThZObXpOx3mRUMR2g5aaL1x6qimlG3yoThumN9ezRA=; b=o
 0klVteTve98rgM5Z3qNkQ8JhqnBC3jveXj0wLuWcaD8b2Yj+JGt6fZB9vh43RQdJ
 CezpVacwGv92ln3Mj2Dswc54h2uqtiub1RT8ok9mxACxHERbV4yXLiXbxdgHfakc
 pMowmK4sOaYuGGbuIyHMrwXRdl2hyalMPKUR9pdk1SDJWowRzwiK3ePSLkfchuIR
 /qLlZivxQOXzBP3sVFzkR6fdQp/+AWvjeqN6Go8JcsbYMxdPOIgZ503alC5zFbWR
 x3k5CleJFlcV+x6BKX4KweqhzsgjCpCk8gLHbCtl+ACE45n26/oi/kdbqLl/pCVQ
 QYNrJHmLT3IYmIlrJYo9A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1758719907; x=1758806307; bh=X
 ThZObXpOx3mRUMR2g5aaL1x6qimlG3yoThumN9ezRA=; b=cOsYNuezLkClbfaa4
 pQZBag7h0EL2uuMHibIXADLfeK2elBdFigrJhebQqDddMBO/gE4CGImcG9+Up3KS
 3/mlQUpElZ3pSxjvbUu8u6MH4dXOeeWWT3IweFazHy4De6BF0ducDh5MBo4LgXJh
 5FpSQAJmRDzX6+ATYOAPRerf2m/cTvafa+4V/RxT2673vbrquK9QZJXCKn4C9zVw
 +BC8cT/DYr5Q4/MiWtA0YvrPDGLeKnyeinXQefnY8VErBeV4sTXADveN2pLngvb6
 bhw+ZMK8RyVD3ZNCONtxppvvNafr7YGc6I0Gx0K4RpvMMv5gCOuRciyNvo9NDOa6
 /5L4w==
X-ME-Sender: <xms:ou_TaL7FKwYV_ZTzNACIp2iGe6VncLDQmVM4nI6LN5ydv7LKUCx7Kw>
 <xme:ou_TaO0uTis8oPlgKpZSX5XoFfiWYDWHmgl4Vr0BCveGzvvsn2vgZphLhc33u01bf
 omHYrQhQcJ-KIJ1p-YOWwT7DB3Gmqriucf8vghDxH5gR60TRpryVSx9>
X-ME-Received: <xmr:ou_TaKBmtWAoPOHQboTqGrJImHY4mbGlyi8YQXjPROAnZt_5pIIOFuuHck9z944O9Kkzaiq-GUovMMotKZ7nN4jp-BmhHws_KRrFeDe7q5tmlA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdeifeejudcutefuodetggdotefrod
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
X-ME-Proxy: <xmx:ou_TaI1diCC1mqUFjaUh7eU982_rHObMQnLtMK9ZnBEO7NqG67bGeA>
 <xmx:ou_TaMs1rb1Q81DmA1IMwAJzkzrmg54CFkgVUc6WTxtUkaUHBVsrOA>
 <xmx:ou_TaA5BCrRTgyvbEQyBFzcWIe8CTuecNIUTBpPahHNKRH7R_aerMg>
 <xmx:ou_TaFJPNjAyFnGt4B5W8_IaUMDYkmaHMNH9pxgAFf1k6hNZ_wylTw>
 <xmx:o-_TaMs21_vHwP37b6c32bPFOvroQc7aGC9_fJs_ZfI6CLA6C8MYq2dt>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 24 Sep 2025 09:18:25 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH v2 0/2] firewire: core: revert "serialize topology building
 and bus manager work"
Date: Wed, 24 Sep 2025 22:18:21 +0900
Message-ID: <20250924131823.262136-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250924124212.231080-1-o-takashi@sakamocchi.jp>
References: 
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
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
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1v1POH-0003Md-LM
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

Changes from v1:
* Fulfill cover-letter title

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
