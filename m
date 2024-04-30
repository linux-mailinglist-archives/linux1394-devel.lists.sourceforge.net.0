Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5270D8B66CC
	for <lists+linux1394-devel@lfdr.de>; Tue, 30 Apr 2024 02:14:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1s1b8W-0007ch-Ll;
	Tue, 30 Apr 2024 00:14:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1s1b8V-0007cO-75
 for linux1394-devel@lists.sourceforge.net;
 Tue, 30 Apr 2024 00:14:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ujqvnV1UjbrAMhw/pMuGXiQMwMWayFyg1OYX4BtO330=; b=LSfrKomMCsSK7dktdvYqlAHf3m
 tWnVEIkaTDZED2dyzgu0A4zmzgzbZK40RS9oWQVlwKyuLLglmGLVeuJRzLmtcRgND77v9flyo1Eys
 30cy5TT8PmIVJX13LZT7qdONEa+5lU8PyX8xR2z2mymxMtUMG08ZgZJtX5hqCQ7n70xA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ujqvnV1UjbrAMhw/pMuGXiQMwMWayFyg1OYX4BtO330=; b=Z
 Wg2Hkkyeo/wAxHJRurODQiBeMWONBePKvsdRvO1aTpgdg5brz1utKJEmJ0fXY+eIcacnEdl2t3MZW
 vhNbsENVpcpDeSUdbHnq9LkQ/CNsO8zRuJxVu/EhGXcW1uZEqrQlSNIOif5adMGGS0KoKUbewSqEM
 kBTtkw6qEOvlOp54=;
Received: from wfhigh5-smtp.messagingengine.com ([64.147.123.156])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s1b8U-0001iN-IN for linux1394-devel@lists.sourceforge.net;
 Tue, 30 Apr 2024 00:14:19 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailfhigh.west.internal (Postfix) with ESMTP id 6C67A180010F;
 Mon, 29 Apr 2024 20:14:08 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Mon, 29 Apr 2024 20:14:08 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm3; t=1714436048; x=1714522448; bh=ujqvnV1Ujb
 rAMhw/pMuGXiQMwMWayFyg1OYX4BtO330=; b=ede8xVRQW1nb3YclMEGbrAx9SW
 EWWbgFdgsBqqRFMyAQPuFf8SMANha5bJ0huRjTmr4L7BJHrv9fTuaVmHc74f+jvD
 Omt1vt3IXqMCDRRvL6bNC7wLmsir4khaR1MJEoNS1VC1uRAHeFRqT3nvGG5nhq2S
 6RJTponqqZXKn/VEPyVWb5ahRUfsZomA3K9NfW/t93GPJqN2gR4GTecacp5JEaOE
 kEMTn8Jt0J/i3cRzA3dtHvaUxod0mNv2lbYPzbVBk1e7vEjvwLCbQvMs5nV+28UX
 cPWna/tOyWUQNCVBRKRmw5dYKYcgUQ/Jxg/TxI5xBcR12lPMJRioRHgdNAig==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1714436048; x=1714522448; bh=ujqvnV1UjbrAMhw/pMuGXiQMwMWa
 yFyg1OYX4BtO330=; b=UA+jxhrzVLn+brPc/kW0Flb4P19mkOq7wqjbVmYMGwvg
 wiwQAzFoyB6S8/INyxX+3Oc9IbFQgAJTMJHrSXO9b9K/FkzTbPDqc9skWJMVUoOZ
 v3iRIcnPdhNqjEyLzywe5BfroEdTCeBn2q6q62T+YKW5zIuVfpwNjJ3d5ezLXegI
 /OM1smOjsDI3/uOOdsETh0gXdLPw8OL9Ez+gPcj8cVbCohJwhLvw4L36dTqBcLaq
 wzVdz8ky5ItKJ8uHt9mQ+ao56o2Bk5SGj3sl+BkD1SEE4kGcCsCXWqR6waKBumhg
 phCEVTCLn9hVxl/01wh/CZwPlkeKxnwB96918consA==
X-ME-Sender: <xms:zzcwZr4sY5Aq4_Cf-bR3EY4AWXxIeoM4XrZ8pWoIrb7WGfqVlfumUg>
 <xme:zzcwZg7dit-14qLmNNTAy3Y4YtCxAxsAoSJmt0lruUNoLH2-BF9t23B888liP6uJa
 UCYdRWmfkxYkWKUJZ4>
X-ME-Received: <xmr:zzcwZicLA9WT631UvQZnLAEDLH0zr8DeZEW4ERl0wrtRAjV7g61A83a7Ma22PvZRaAR50RXPOGUfK_i3t9vwQHhzt0no4VsNj1apyNvjY65tRQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvdduvddgfedvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffoggfgsedtkeertd
 ertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeffvdeuleffve
 ekudfhteejudffgefhtedtgfeutdfgvdfgueefudehveehveekkeenucevlhhushhtvghr
 ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrg
 hkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:zzcwZsI1KM2RG9GJZ7gZ-u5VWsvkFrQA-XHd84VB2aysJ7uQfGOxOQ>
 <xmx:zzcwZvLzhoFVhdbW1qbGCo9iqhz8GTq-SWOd3ayWtnvzfUMYC-_3xQ>
 <xmx:zzcwZlzmn6Wt8xXXm5eaiCLlPsCF41jwY30nOcIq2fLA8yQ2Qh9IbQ>
 <xmx:zzcwZrJOecUz4yY1UtLnS1fUGYdUuEhLtiJ4CAYQ5qA9N4AEjveUIQ>
 <xmx:0DcwZmXNrdClA44xaoSeofdo4oDhp0ffWQYItlY3KOdMXGOzUesiGS6D>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 29 Apr 2024 20:14:06 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 0/2] firewire: core/cdev: add tracepoints events for
 asynchronous phy packet
Date: Tue, 30 Apr 2024 09:14:02 +0900
Message-ID: <20240430001404.734657-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, In IEEE 1394 bus, the type of asynchronous packet without
 any offset to node address space is called as phy packet. The destination
 of packet is IEEE 1394 phy itself. This type of packet is used for s [...]
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1s1b8U-0001iN-IN
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

In IEEE 1394 bus, the type of asynchronous packet without any offset to
node address space is called as phy packet. The destination of packet is
IEEE 1394 phy itself. This type of packet is used for several purposes,
mainly for selfID at the state of bus reset, to force selection of root
node, and to adjust gap count.

This series of changes is to add tracepoints events for this kind of
asynchronous packets.

Takashi Sakamoto (2):
  firewire: core/cdev: add tracepoints events for asynchronous phy
    packet
  firewire: core: add tracepoints event for asynchronous inbound phy
    packet

 drivers/firewire/core-cdev.c        |  7 +++
 drivers/firewire/core-transaction.c |  8 +++
 include/trace/events/firewire.h     | 78 +++++++++++++++++++++++++++++
 3 files changed, 93 insertions(+)

-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
