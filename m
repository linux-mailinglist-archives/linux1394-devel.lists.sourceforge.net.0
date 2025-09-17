Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D4858B7EBBB
	for <lists+linux1394-devel@lfdr.de>; Wed, 17 Sep 2025 14:58:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=R1SMN/ViMwUJDSkPaUGDIn2PupH2i7ZZHAIyRZFID44=; b=dpoaBpmbRzkQwSelt+CuvI1mZn
	clVgazko5NDW00BRZZ/uaip7iyXoOWrJxIiA+5WtvdsWCvru9pRLd1RzMFgxqICr9Rgkj60v95RtH
	28qOBCqzUojJSaGW0T04dHNYOvyTeS9jYGplrYxwweAZN/Asm/ruCAMlMJrMTqsQ3BVI=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uyfeW-0007Az-9S;
	Wed, 17 Sep 2025 00:04:04 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uyfeU-0007Ar-9u
 for linux1394-devel@lists.sourceforge.net;
 Wed, 17 Sep 2025 00:04:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lAtbokD6hXmqQ1ZHRl3dNvhzvAtOyz0DHK3MaRgY6AM=; b=M+S6mQ0Cirgj/iIuHKvZLHR/TU
 dicRpVb+dXORU2znyKMzuKrHAKQq0ksm21WVBwDFIB4UUhpwLY0e0h4/DaYyEsXLO192ghvUiJJk8
 GkgNLR2zKWBw8AgkMHGjsovtPFGH2yjNYfsqf1NdLaxuQjOeuaA8C0IXRjkVgUpP6ld0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=lAtbokD6hXmqQ1ZHRl3dNvhzvAtOyz0DHK3MaRgY6AM=; b=a
 DffhWY7exYvC288XS94MWcYYRD6alfXnU7xcsRm3hVInLJ+IXaUZvHmeFa3ED8jVOOWFd6Tgc8b9b
 FG0i0rrv+SUDkvAs+8YOaNGtc3z7Z76HEMtbgytLwUUWh5Asfby1EYLXbCBM+tyQY2lk4kXLqbU8Q
 JWQPYoz96HDZ7WfM=;
Received: from fout-b4-smtp.messagingengine.com ([202.12.124.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uyfeT-00046U-Ps for linux1394-devel@lists.sourceforge.net;
 Wed, 17 Sep 2025 00:04:02 +0000
Received: from phl-compute-01.internal (phl-compute-01.internal [10.202.2.41])
 by mailfout.stl.internal (Postfix) with ESMTP id 4508D1D001BB;
 Tue, 16 Sep 2025 20:03:51 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-01.internal (MEProxy); Tue, 16 Sep 2025 20:03:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm1; t=1758067431; x=1758153831; bh=lAtbokD6hX
 mqQ1ZHRl3dNvhzvAtOyz0DHK3MaRgY6AM=; b=mCvSAdwqFLcKeKVBKSWPSKhJQI
 PckNgn+bl11efE/reWEmn9NEfPBoQKcrryQdb9kETP+deuq8AQYZ+CT5Tp5Ltj9L
 USNnT2aAUEYtmE0T423oeVTiWrlpdor92IacWwhBK+dk/ZP0snzydG+uPJUGbKIJ
 Lk4rjWRrN0NDn1NYk3BJs9O9VZXQ/ze79Uf2gRoT538BLmsz2M+O1IV1R6yWonmK
 YYmzoBp6JdtuCpvNLSN/NjJzwFfVWHKA4SY/w73mtYaKgUEljeNjf/3bhj1/Y9ni
 NvLlRTNT+yxCHxt0sf/a/PAYobgN3bhQuknrQe72DEzQvDsBRp/yL+zdTGGQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1758067431; x=1758153831; bh=lAtbokD6hXmqQ1ZHRl3dNvhzvAtOyz0DHK3
 MaRgY6AM=; b=ZWU1nGRWga8oR6MPKkkClc1hmPc2FF2sK11A2AqXnqZBYhwOJNP
 a4wIaKFMnqunF8pVE01EchDIQ/gzYg1TwUsoGxjZ2uArdbdyJ77+0kZ+LXoykb4n
 l+vs0fTSrJ4SEZR3o0j5GSOv0QfSWdtZquGjupWaF7m+hWib4xUCeC8klrZH9H4e
 mSurxWl3FlRIMbTibKj+MkICxVn1yp6pr6QVIEOIYOVcNfulUBt2a0W+DdpbbUJ8
 6hu7dWjFNDW2XgMgxQ5JiqV3ssqlwIXi5aeZ0aSr4YNZVkp/rqgcEA+uPXarZIqh
 EefrGmq0FUmHRN1RZZOk8Df2I6HQmzOI05Q==
X-ME-Sender: <xms:5_rJaEodO2REVcAuxa2YDaTfxZy375ZmXMd0iNG1SYN09o-AOCxPjw>
 <xme:5_rJaDlyet8qcZekTIPFyVB3KJdOLK4iXMYnrLR5XmMbf8XGZllCodfEN4vFhDcEU
 HOHrujgVEQkMsJDK54>
X-ME-Received: <xmr:5_rJaLLD5YFnhsm5YxL04ToHBZAY2HZQ50W8vIOBP0hsU8pFImUsraNh-LeLI5Tf3oaXI5CpYGsEnGib8cImbZp_YPfFHykslRBk9VnS8w6JJA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdegudeliecutefuodetggdotefrod
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
X-ME-Proxy: <xmx:5_rJaIzxUlzGPB5w8_7LEH2a2PCt7LWBnyadfAm4bAuS0CGcXHLy3Q>
 <xmx:5_rJaDuYNptMqipURH9m1PDxUEix_IAEJbjrNNbhjYUTbMUCZ1s8LA>
 <xmx:5_rJaHvb5dfj2PUI7F4DSQXWY42EkhAtULq_IMQUIFeDowFz0skl2Q>
 <xmx:5_rJaAN5PViHcrhT0YSHAfEAErozZSBehgQHRMGPk0WYOvJQZb_C8Q>
 <xmx:5_rJaEv2nRplGbEpIqRBLOiF9-qw7TZS2VpBI3LCZ9UL4dcnJmyWHhML>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 16 Sep 2025 20:03:49 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 0/3] firewire: core: serialize topology building and bus
 manager work
Date: Wed, 17 Sep 2025 09:03:44 +0900
Message-ID: <20250917000347.52369-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, Two functions, fw_core_handle_bus_reset() and bm_work(), 
 acquire fw_card spin lock, however each purpose is different. The former
 function manages to update some members of fw_card, and the latter fun [...]
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
X-Headers-End: 1uyfeT-00046U-Ps
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

Two functions, fw_core_handle_bus_reset() and bm_work(), acquire fw_card
spin lock, however each purpose is different.  The former function manages
to update some members of fw_card, and the latter function manages just to
access these members of fw_card. This reflects that the members are valid
during current bus generation once determined by the former function.

Current implementation schedules a work item for the latter function under
acquiring the spin lock in the former function. This could causes the
latter function to be stalled by spinning until the former function
finishes, depending on the timing to invoke the work item.

This patchset suppresses the stalling by serializing these two
functions. In former commits, the former function is invoked by IRQ
thread, thus sleep-able. The former function disables the work item
synchronously, then acquires the spin lock to update the members of
fw_card. After that, it releases the spin lock, then enable and schedule
the work item. The latter function is free from the spin lock.

Takashi Sakamoto (3):
  firewire: core: schedule bm_work item outside of spin lock
  firewire: core: disable bus management work temporarily during
    updating topology
  firewire: core: shrink critical section of fw_card spinlock in bm_work

 drivers/firewire/core-card.c     | 30 ++++++++----------------------
 drivers/firewire/core-topology.c | 11 ++++++++++-
 2 files changed, 18 insertions(+), 23 deletions(-)


base-commit: e0cda0dd12e08ecb8d26b8d78dc63e67e7069510
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
