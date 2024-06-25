Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B8998915D4B
	for <lists+linux1394-devel@lfdr.de>; Tue, 25 Jun 2024 05:18:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sLwhI-0001Px-Er;
	Tue, 25 Jun 2024 03:18:21 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sLwhE-0001Pn-7x
 for linux1394-devel@lists.sourceforge.net;
 Tue, 25 Jun 2024 03:18:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5bf7LX7qk6lej+Pi64v9f03QP8RBHuQgJ20EFqd6G5U=; b=mppD1OR1Am8epayE1+G2pSnkxC
 XihMz18C5tAlYcOj8dCKcwmN95Mn2R//dZ4D46PxEWxzhsIR84bgAIKI3gARjt0ZKkC0Ot1g4cMOR
 UIF5gEijBtg7v98Gv6dso7G47mKfKuzGclPoE5hWx55NoMpc72DB0A/vbClXZ29tsoyQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=5bf7LX7qk6lej+Pi64v9f03QP8RBHuQgJ20EFqd6G5U=; b=b
 0kklVTOJtCvYR53TtmuOLgHbBj6bzwt22nDKVayzZ0sQWgVzb4cgxkC594jUn9FKh7Jlfx24ehzyJ
 ENDW8LcYuoYHHHuHyVpWOIPnkdlTWR5AuJjmu4+sazq8nlTTPOwFyilxBbJ9J2B9J4u4Bv1zp4xC+
 4uZLZ9bDgODJ9cuo=;
Received: from fout3-smtp.messagingengine.com ([103.168.172.146])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sLwhF-00021n-9c for linux1394-devel@lists.sourceforge.net;
 Tue, 25 Jun 2024 03:18:17 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailfout.nyi.internal (Postfix) with ESMTP id DE84C1380154;
 Mon, 24 Jun 2024 23:18:10 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Mon, 24 Jun 2024 23:18:10 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm2; t=1719285490; x=1719371890; bh=5bf7LX7qk6
 lej+Pi64v9f03QP8RBHuQgJ20EFqd6G5U=; b=nUvX1+ydIM5DqoVydAak/wN3ca
 rclgYwuTJ3k8miHYSCdNioW3TYPYenqIe2nMP2T5R3Prx/5sYjUTB9qhPagO2h0B
 v5f5Dz3De1iGyEnskekSeqy0D5YgQU7mz68LR3FbvKW56mAEDdjNLLMtgVSb+3XM
 MBHvdn++L0NLVoe1eVqjzvQdCaaW/KcF+todDk9mhcnVkdfibObLT4uwH82yfxi2
 99UWLQnPoBzki1FxLZup/FSanYu8KYy7GQBuo+bNE0LNWDZVdU0HEgWHvAGEJwQF
 y9eBJcvZ4ecR8suWpsX4TQdUSVNYyaegFlxvCognjdLRY55mF+r0cy0+24mQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; t=1719285490; x=1719371890; bh=5bf7LX7qk6lej+Pi64v9f03QP8RB
 HuQgJ20EFqd6G5U=; b=cuNYSaZmACnf+6iEAOzBQG24ra7j0k+64n1o8S/0WYh+
 jcyBZXRHOr/uuZ0jNuQHVk+fqaJlFOlxbAj+O0zVXRpC+BvZfAJzqVtKNDY85AIe
 Fo6Jnce+A2pq+e4c4pJHOQnzl5JTWcvNkh2GJAyn+j3lw5or/1gai95l6CkRaBaV
 SgGK0CrhnMb+TwGyWPRhoPonGN27k0u21xfraMFXzSTGgJ15RaKvpdL/OiZo5Es2
 IQ0kNyazjIV4MLNurK0ZpgMrqUuLzZZZW+ProsHCscSaJZ7JHWDQNtuliJTdPL9e
 wLmCeGTkGkM+vv2JNRqATPA6Cf8yrB/tVOZbHVWIMA==
X-ME-Sender: <xms:8jZ6Zn2v9ADwjmtdhAi97y4S4JbTN_9nnCNTrW3diPXPkJxTpJoTxg>
 <xme:8jZ6ZmEiC7MykpG1Jov_tBKjHdgyzVhZc1XpHdNhx_uFh0Uvjx4-WdTBf877iIWRw
 zgZvfhLezXTz0t_S00>
X-ME-Received: <xmr:8jZ6Zn4hbQPqlXRGEkGonsxgUL8FV-_tvs0XskoAHXiSSkbSjiSz4bnRHjNJ7i0_II6LWnkP7PdZw88O8BqsoNocvwCpAfD8MWF9HaIBMQ8H6g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrfeegvddgjeduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffoggfgsedtkeertd
 ertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeffvdeuleffve
 ekudfhteejudffgefhtedtgfeutdfgvdfgueefudehveehveekkeenucevlhhushhtvghr
 ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrg
 hkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:8jZ6Zs3imep9gA9zzCRQ7dY4zLXWdPwyiXN954yKXQTEr0CvWWfwIA>
 <xmx:8jZ6ZqGDiTyXZWU8Vs8kVTvGJugZNiv8KJFocw__smC4cy3uxl9P9w>
 <xmx:8jZ6Zt9NIsq9K4xm7_iHKN-ntpQiJw4crqtMcrhsOobF9YNpH4RS5Q>
 <xmx:8jZ6ZnkTw4BJnLIIiTbhOnTR8tjDanOQTN3FcaAM-X3j9xDFHBzwMA>
 <xmx:8jZ6ZvQDi_iWaOOyxavdpzVJrnoID2rBJgf1jswC8LgkxQqfRI92rMU7>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 24 Jun 2024 23:18:09 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 0/2] firewire: ohci: add support for tracepoints events
Date: Tue, 25 Jun 2024 12:18:04 +0900
Message-ID: <20240625031806.956650-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, 1394 OHCI hardware triggers PCI interrupts to notify any
 events to software. Current driver for the hardware is programmed by the
 typical way to utilize top- and bottom- halves, thus it has a timing g [...]
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.146 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.146 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [103.168.172.146 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1sLwhF-00021n-9c
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

1394 OHCI hardware triggers PCI interrupts to notify any events to
software. Current driver for the hardware is programmed by the typical
way to utilize top- and bottom- halves, thus it has a timing gap to handle
the notification in softIRQ (tasklet). The Linux Kernel Tracepoints
framework is enough useful to trace the interaction between 1394 OHCI
hardware and its driver.

This series of changes adds support for tracepoints events to the
driver, and adds an event, 'irqs', so that comparison of the event and
any event in firewire subsystem is helpful to diagnose the timing gap.

Takashi Sakamoto (2):
  firewire: ohci: add support for Linux kernel tracepoints
  firewire: ohci: add tracepoints event for hardIRQ event

 drivers/firewire/ohci.c              |  4 +++
 include/trace/events/firewire.h      |  1 +
 include/trace/events/firewire_ohci.h | 47 ++++++++++++++++++++++++++++
 3 files changed, 52 insertions(+)
 create mode 100644 include/trace/events/firewire_ohci.h

-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
