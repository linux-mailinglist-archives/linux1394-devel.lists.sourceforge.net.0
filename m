Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 891934B32A2
	for <lists+linux1394-devel@lfdr.de>; Sat, 12 Feb 2022 03:22:06 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1nIi2s-00050L-4a; Sat, 12 Feb 2022 02:21:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1nIi2q-00050D-2A
 for linux1394-devel@lists.sourceforge.net; Sat, 12 Feb 2022 02:21:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cRHm2GhJlaNLqABTQI1t1w+2bCz5SKGqO3g6bK8UMd4=; b=PKTj6sJq8OvGvU+jI27BvkC0ID
 s21EPuL/R1bv6XQs/U9E+AQ6bcgSmAgGjZ08v6oN3tswTmlMUQR5P7Q7eDgN78pX2/btQ6pblywvk
 oyo20suxQbSFgvIoEtnCs14egMZKNuCpTnReeGMcPcSifFctfqLShvNGa+DBZA3XDqdo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=cRHm2GhJlaNLqABTQI1t1w+2bCz5SKGqO3g6bK8UMd4=; b=P
 dVSQ6zamtPjzJkc0cCy/Bol2NjU/phyoEasIwg0hQYV51afD7fipUudSHZyEUidXxaZpe6dZwD+Yd
 KRpVzvPZhyi9jVLsvM8Dv1BJH/hzr+si9ehuPfTxkw3ZwWHuyTPHg4plsV9qWZo7ILQk6hDcow9Ys
 pWQ2jeAb5jRGTK10=;
Received: from wout1-smtp.messagingengine.com ([64.147.123.24])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nIi2l-00GEfQ-Qt
 for linux1394-devel@lists.sourceforge.net; Sat, 12 Feb 2022 02:21:50 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailout.west.internal (Postfix) with ESMTP id 96AB93201D2D;
 Fri, 11 Feb 2022 21:21:38 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute1.internal (MEProxy); Fri, 11 Feb 2022 21:21:39 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:date:date:from:from
 :in-reply-to:message-id:mime-version:reply-to:sender:subject
 :subject:to:to; s=fm3; bh=cRHm2GhJlaNLqABTQI1t1w+2bCz5SKGqO3g6bK
 8UMd4=; b=pBtajA1I6pgzKR1auvViNuflvfBpKlGJA+6ZOMnvWsFSojrf9yTndH
 Rs+dggcqIrPR8MR/wFbhVI76wgH+erlYODcQRTStY02J/BWsIgjf8o2CEpUv7OrO
 sfoT+aK4Cgf3/m+Ux60+okacv16itS37WDhd1Ln62ppLnEmqnDBHjxIH2vUnY8Gf
 QuK0x0+4/nlsXhw5T/VUWG2IK0MvcnCRBYvEHwB+ciFeYhvSJl6+TgbNfmqyI2La
 xr30/ONmnd6Cq+it3tr0EovXyRU7rLlgXDcWKDu0jqIQf1VIPSmmMksguuM6TC2S
 4pvu5Tybauka/YKn7S5T9tNPgJKIFivw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
 :from:from:in-reply-to:message-id:mime-version:reply-to:sender
 :subject:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm2; bh=cRHm2GhJlaNLqABTQI1t1w+2bCz5S
 KGqO3g6bK8UMd4=; b=KTfgNKpHZkoGuLnUmQGBMpY7UkQIQYNwznMvIeJHpTpkL
 IgiPW/NHb99aG1u+TQ8Avv7pbYzlkWr/p13JdrYgvndD2ycI4Xlld3CE3mV9AgGH
 QIfhN3WG/lmAsQKMkJl0WEev8cU8UN0xoe9LfcZN9KPoSwNhMBx99pQ0DokOXR3i
 tK/RcZgWZS6rYRc+Qg9P9oDODGLFXiT7F2RUcmvcZfOdV9fEs3FXm6ZLeKgO+maY
 YxUV9Vjqm6OlNmAFFFz1RkOeTLV5vX0XxqzhBqHIEpGYz/5KCYKgLVK4onVyrysJ
 fLlk2nYX4V5GKgmcafyk3dxdfqjchDgRhXoTrESDA==
X-ME-Sender: <xms:sBkHYqcK7qMNW5nbufNxoz4YgG4E3MwBqISt-gWDzMHF3xeQspdgKQ>
 <xme:sBkHYkOv1pVt7sp9_SuAl_yXYUqxlsTekI4do0Pam0N-ufKH6z8NTh8ir2QdsVz2i
 OXa6ilPffY6yUJvshc>
X-ME-Received: <xmr:sBkHYrgpA1Gy5YcgvZl2OT21B1JvP_0TKYo9JsfrU0ycfsV1VprjA8_PkQoMPUA8iFn0qOfsdtGoY-qmBpFSAQO2IXo5YCHKJjpQsJKAWS6FrThZlFCz>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrieeggdeghecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffoggfgsedtkeertdertd
 dtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghshhhi
 sehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeetieeuhfejkeekfe
 ehteeikedvgeefhffggfdvieehhefhheeivdfhgfejjeduudenucffohhmrghinhepkhgv
 rhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilh
 hfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:sBkHYn9_V6CgeO3i4WDnsRF2Gve6FOfGKHpUIGNyuHTjQoxgSZE0FA>
 <xmx:sBkHYmsnJcngHTFp3qAOQe5obyH7Kyqj2i7QUXKrTUwnYGZhB9h5ZQ>
 <xmx:sBkHYuGGxqfR9EMbg0JMIGF8AtY0VA4APGJBsqDaYTXjm46UKOgv7g>
 <xmx:shkHYqKHihHg8ePsurbu1UjYVnN7weHcc0TrNzIURrz_xVLjHAW3lw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 11 Feb 2022 21:21:35 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: stefanr@s5r6.in-berlin.de
Subject: [PATCH v2 0/3] firewire: assist unit driver to compute packet time
 stamp
Date: Sat, 12 Feb 2022 11:21:28 +0900
Message-Id: <20220212022131.199855-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi,
 Current implementation of Linux FireWire subsystem doesn't
 allow unit driver to operate content of packet in IR context according to
 time stamp. Additionally it doesn't allow unit driver to read curre [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nIi2l-00GEfQ-Qt
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
Cc: alsa-devel@alsa-project.org, linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

Current implementation of Linux FireWire subsystem doesn't allow unit
driver to operate content of packet in IR context according to
time stamp. Additionally it doesn't allow unit driver to read current value
of CYCLE_TIME register in OHCI 1394 controller. It brings disadvantages to
drivers in Linux sound subsystem in regards of handling time for sampled
data such as PCM frames and MIDI messages.

This rerolled patchset is first step to improve the situation.

Changes in v2:
 * Rebase v1 patchset to v5.16 release

V1:
 * https://lore.kernel.org/lkml/20211202113457.24011-1-o-takashi@sakamocchi.jp/


Hector Martin (1):
  firewire: Add dummy read_csr/write_csr functions

Takashi Sakamoto (2):
  firewire: add kernel API to access CYCLE_TIME register
  firewire: add kernel API to access packet structure in request
    structure for AR context

 drivers/firewire/core-card.c        | 39 +++++++++++++++++++++++++++++
 drivers/firewire/core-cdev.c        |  6 +++--
 drivers/firewire/core-transaction.c | 18 +++++++++++++
 include/linux/firewire.h            |  3 +++
 4 files changed, 64 insertions(+), 2 deletions(-)

-- 
2.32.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
