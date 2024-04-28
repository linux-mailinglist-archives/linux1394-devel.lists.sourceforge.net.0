Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 504108B4A5E
	for <lists+linux1394-devel@lfdr.de>; Sun, 28 Apr 2024 09:14:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1s0yja-000707-Fx;
	Sun, 28 Apr 2024 07:14:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1s0yjY-0006zm-Uc
 for linux1394-devel@lists.sourceforge.net;
 Sun, 28 Apr 2024 07:14:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KDmNy1AVOzmB9RMGBkgjMaqD0qRXGqGIyc3NwAF6bY8=; b=eGyWBdqYixuG9pEPYDe4Z54Tcq
 52R54mSXpdjObYqUPsa+Hd34a9rm2lFp7Cau0IpUgcYSx3mHGQY/JL4bWn4m6dV0d/7adK7PChust
 1swmb6PhouHCKpEBgR/cB1gqAZWacLhDT2coSdsNt+lHX0vuzjdClZrWZ8OudCRU/8CM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=KDmNy1AVOzmB9RMGBkgjMaqD0qRXGqGIyc3NwAF6bY8=; b=W
 Sae+JvenliWx8E8ccD9O3KZuIv7tmulK21/aqp///jKWTwJ7ZNGpQQ5x+Ctw1krBASu8FIxlUB8aY
 Fqe6HslKctj0k0UOVVrXRAK9VIiASwfuhaJ9G+ae58fEVI1KdPA7JwmYveSDDwQYmHqn198UalNro
 dgEYp01IOh62kClQ=;
Received: from wfout2-smtp.messagingengine.com ([64.147.123.145])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s0yjV-0000Ge-B4 for linux1394-devel@lists.sourceforge.net;
 Sun, 28 Apr 2024 07:13:58 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailfout.west.internal (Postfix) with ESMTP id 00F441C0010E;
 Sun, 28 Apr 2024 03:13:51 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Sun, 28 Apr 2024 03:13:52 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm3; t=1714288431; x=1714374831; bh=KDmNy1AVOz
 mB9RMGBkgjMaqD0qRXGqGIyc3NwAF6bY8=; b=iZBE7t/veACqUYIZXmHq2/Kw9v
 817wcnRjHcUqdrRHfF3zZ4Vu+DARQpPTzwt2L4IT/I51+hbI0sk5Gsf6okI8IeHM
 P9slcgucOn1hB3KpzhtwUfMzwhlpcRGFPQfeN/GWsF0W+dhtTHiJE5qh8QaoNA0O
 9VhtxBtfLtBv2pxqq2sDXanYbjVVqXoyDkImbGBnCBFVELI/xgZDsAxnzJ8xmA4q
 h9ZWiq3h31u0oOlAli8lAMKPRwpli+af5vZMbhWUtdQrAOKll7wwUcIqPL19/A+s
 Wpu8E8G9EoYqdkquGOS1V+UkGnd066zN8XFa+FYahUHCz7ci8YE+Mh6V79Fg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1714288431; x=1714374831; bh=KDmNy1AVOzmB9RMGBkgjMaqD0qRX
 GqGIyc3NwAF6bY8=; b=Arzk1BJj5F89lDd80+be6Imx6Fu872tbOrCYk9tpTrS1
 NioyYQ11YQdzU1645a0ow5zUomW98/uqZWBHpIuuypjq43SM+opocw95fIUQPurV
 AktMB8aSTiO63NYPKDeGYZIYOSpuahDNyEwjN68RWjAPrWrRRYdlpbPlKdQ7tkGY
 NdLQSemzAj0NJ2rHT5EM5gIePlxA7LVX70wMAb9iniRXOHWpON52sOPndsnn/arJ
 H1pAiWJ9hvJGwsKXjZANQTsvT30iI7TTZ/R8X3oRMInx6bJdv3MsbqRDAo4/0HVe
 tfpGvG91Y/bkSt0SNCuSPa2ygORJ+aTv43f6Lh8jHg==
X-ME-Sender: <xms:L_ctZijb6f1mVvklX7VgJq6us49UXy7Dcf7W0PuPskSzRGOvYY2EDQ>
 <xme:L_ctZjBcTjhmXqHiW-FOOKnKFKLYj5Ok7BBEPP4kD_ixJZ2PU2hq5mdlnq-FrlpkB
 _bxW0vbpixo_zZjmUs>
X-ME-Received: <xmr:L_ctZqG40PNJJZdrZw_0jpSqFN7aVJQZ-jkshGZlKkHQHnmVnUlQCqIH7yX07D8Iw1e8xyNRaQqxdQanTkKwlXzeiPzYy2yrx7dYiTAyLhSqTA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvddtgedgvddtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffoggfgsedtkeertd
 ertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeffvdeuleffve
 ekudfhteejudffgefhtedtgfeutdfgvdfgueefudehveehveekkeenucevlhhushhtvghr
 ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrg
 hkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:L_ctZrSuDm3RTJ1w3cp8mKyuOds-xojXn3xVUTVvWNJ0ngFM3lmp9w>
 <xmx:L_ctZvzeaQIWsXmLcy1sE7KnlwHmoURGm4aYYFC6XTQHMSPeTgKu_Q>
 <xmx:L_ctZp71oL4Ml7C2uceDQ3LIYBYdHYbemqc3FkqcKRnDlg21xKPbJQ>
 <xmx:L_ctZswZeqs7R_i_UMFMVMeQJCVwJF0nHEFMPX0P9XIbcve6r2HOcA>
 <xmx:L_ctZq9PW4x14P39ENl3zRe1lNWmmJv8RcgVWuq018zAbIl2Q1ZyJ8aB>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 28 Apr 2024 03:13:50 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 0/8] firewire: core/ohci: add inline helper functions to
 serialize/deserialize header of asynchronous packet
Date: Sun, 28 Apr 2024 16:13:38 +0900
Message-ID: <20240428071347.409202-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, Between core and 1394 ohci driver modules, the data of
 'struct fw_packet' is utilized to deliver data of asynchronous packet.
 Especially, 
 its 'header' array member is for the parameters of packet. How [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [64.147.123.145 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1s0yjV-0000Ge-B4
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

Between core and 1394 ohci driver modules, the data of 'struct
fw_packet' is utilized to deliver data of asynchronous packet.
Especially, its 'header' array member is for the parameters of packet.
However, the serialization/deserialization are done by local hard-coded
macro in each module. It is inconvenient.

This series of changes adds some inline helper functions to replace
them. A KUnit test is also added to check them.

Takashi Sakamoto (8):
  firewire: core: add common inline functions to serialize/deserialize
    asynchronous packet header
  firewire: core: replace local macros with common inline functions for
    asynchronous packet header
  firewire: ohci: replace local macros with common inline functions for
    asynchronous packet header
  firewire: ohci: replace hard-coded values with inline functions for
    asynchronous packet header
  firewire: ohci: replace hard-coded values with common macros
  firewire: core: obsolete tcode check macros with inline functions
  firewire: core: add common macro to serialize/deserialize isochronous
    packet header
  firewire: core: replace local macros with common inline functions for
    isochronous packet header

 drivers/firewire/.kunitconfig                |   1 +
 drivers/firewire/Kconfig                     |  16 +
 drivers/firewire/Makefile                    |   3 +
 drivers/firewire/core-transaction.c          | 152 ++---
 drivers/firewire/core.h                      |  21 +-
 drivers/firewire/ohci.c                      |  78 +--
 drivers/firewire/packet-header-definitions.h | 234 ++++++++
 drivers/firewire/packet-serdes-test.c        | 582 +++++++++++++++++++
 8 files changed, 952 insertions(+), 135 deletions(-)
 create mode 100644 drivers/firewire/packet-header-definitions.h
 create mode 100644 drivers/firewire/packet-serdes-test.c

-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
