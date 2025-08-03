Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 54F9AB19403
	for <lists+linux1394-devel@lfdr.de>; Sun,  3 Aug 2025 14:20:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=JEif0d5nmYgqIsJiqMDvvlUUNiusWi5epaMujrm+Qgo=; b=JsPnE6u28ESDwQzxFUWQZo9PFP
	sGwzSVA7073GOtXzCWxKHZ+/qL8L2H0qL1WbgAOEF2sDL43Jivf0JOMRDP4pNhMKLqOntadCHyXmA
	ptulIjXjdvNn+sRqqenRFu/EA7FGewVRrXooFBRglRyA16WwfT+CMz+qOl/5Hc4gSuNc=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uiXhW-0007D6-6E;
	Sun, 03 Aug 2025 12:20:30 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uiXhT-0007Cv-Kf
 for linux1394-devel@lists.sourceforge.net;
 Sun, 03 Aug 2025 12:20:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=82arPFn44bFux6dZl+ncEfdiZPcXgbDKmVNiH8NTCo8=; b=Oq5Yt0CUvKXRoZHyXY1OAwk83Z
 34g6s0iYtHCg2jSB/xMlvuQwhRmfOfOZKwxUJjMZQbto3zCeVS6Rnijeoo0u/qA8/feIfdpotfmZ/
 hc9IMxn//dpGorT690MuL2s68u87ilt2Nvcld5wmB9uMc2Ad7MhaOZ0UOdlDxhm9+ONk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=82arPFn44bFux6dZl+ncEfdiZPcXgbDKmVNiH8NTCo8=; b=e
 nmELNWTMMuqhE15WYufeaS3fjovbxvcX/Wt77L6E5u/OPatP9xUBvwmenb4+C6z0PtpGrZx2RoNDf
 amnSqcMLUqhQyhs/SU+XvMzw1CeqpvCVGuaaubNGfwGOosm8fbd3cPGfR1WiNJAoH3fR7eoiySOpp
 h+WNo7ZjhUbqtYO0=;
Received: from fhigh-b3-smtp.messagingengine.com ([202.12.124.154])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uiXhS-00054L-3o for linux1394-devel@lists.sourceforge.net;
 Sun, 03 Aug 2025 12:20:27 +0000
Received: from phl-compute-03.internal (phl-compute-03.phl.internal
 [10.202.2.43])
 by mailfhigh.stl.internal (Postfix) with ESMTP id 74F0F7A0053;
 Sun,  3 Aug 2025 08:20:20 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-03.internal (MEProxy); Sun, 03 Aug 2025 08:20:20 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm3; t=1754223620; x=1754310020; bh=82arPFn44b
 Fux6dZl+ncEfdiZPcXgbDKmVNiH8NTCo8=; b=q3a4iBo3D6NMMW5ZpqEBVuJ1kU
 oMSfrx3ysT3uzq9WNp1DkHg9Qb7ZOwmwjHO5uI902Ri1zuzKpnMPCx3fT4v6qKYw
 SEOdT0+7iXFjI9S5MefeMIzUdTIhLLUfDeqX50QQviXFhf+uC4UdUP+fKKriXfL7
 cwZQaD4YGKXb1EEtFumiXYApOR0AomA/8mumdVBuOxFtheGnp4JkWMfmP/rrP5zZ
 VlrZekyqUb2vbH5yjwpAWAtJKj40/OogmkJqQGiRdR9K86ZTTwbRage1EmuRYr2C
 lFsaNWSaovEIQ4+Z0zNykW/HZCjnxGXbYyh8QC/EjnP5EgQzeRGUDPqw8sjg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
 1754223620; x=1754310020; bh=82arPFn44bFux6dZl+ncEfdiZPcXgbDKmVN
 iH8NTCo8=; b=BfPlSP9IrB7A/S+gA77j6LkzIOmt5xx7LdLvKAv7/g17KuFtKhc
 S5LXkSs4n+YmrcOCpYJbAZv8wEbfDYCPnTlRWR3BhX0ZNUvMKsgbgFgORKq+LgIp
 IEC4HF1zf3aiWFISR9QzhtzwpRIp8XZW6MXD0BmxI97dONVYlzrOdvO/J7A93wXE
 dUx8NjKF4JsRTNUkfexYguXeHK4Zo3HPNZuIYkJ/56M7rYzHJkBub3KkicHoi88m
 MZcwGxotpUpmYOmKjpe1f3Chd31Buhj8SNX56wc/gV/G7ABH3ErpzJ8IL92Uc8BI
 xNYDxwZdF37Bl9Fk50sZcwi5ecU7UZndLJg==
X-ME-Sender: <xms:BFSPaPegtwT-rfseVz1mrRi5stgLl_0SN44xsU7cLcXnnb_h2FIDJg>
 <xme:BFSPaOLwR3xRaSbygRYnsBKLgkPQ_JDNPHM8y1uetmT7nIQEeybWrK57y2XSSeQmx
 JoGwxWSJhSQggKA7VY>
X-ME-Received: <xmr:BFSPaKeH_DYTALgSshNiLVImMZMWruPIjN6nEaHJZKWVi6HO3K02IKVIx91TjqbPDqN7g_4ZOmBARgZosU6sAKX72VkbMMW87U0yYDvst2Mb>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdefgddutdelgeegucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffoggfgsedtkeertdertd
 dtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghshhhi
 sehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeeggfehleehjeeile
 ehveefkefhtdeffedtfeeghfekffetudevjeegkeevhfdvueenucffohhmrghinhepkhgv
 rhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilh
 hfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjphdpnhgspghrtghp
 thhtohepvddpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtoheplhhinhhugidufeelge
 dquggvvhgvlheslhhishhtshdrshhouhhrtggvfhhorhhgvgdrnhgvthdprhgtphhtthho
 pehlihhnuhigqdhkvghrnhgvlhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:BFSPaN1-7gZJiZrEfuQcpvQYjTbYQJQJRAD4V95lmnzNn7ri9_kD2Q>
 <xmx:BFSPaLiJFIXe6ZFT4vWUE9ldXMXtw51O5P0pvGVENr1-4NvWlxy8wA>
 <xmx:BFSPaLT7l9dF2_JVqCppkazHq9G-X36IERU8D4w3NuQlyQG3xgGHOg>
 <xmx:BFSPaEhnlGIpvJAjliLJOUFTPGjMGNgglp2S3NErooQOnW5evBk8kw>
 <xmx:BFSPaCDzZfmb33KwVtSb1xUit9X8kt97Wja93HV_LPuLm3zmZARTfwNj>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 3 Aug 2025 08:20:19 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH v2 0/4] firewire: core: call address handlers ouside RCU
 read-side critical section
Date: Sun,  3 Aug 2025 21:20:11 +0900
Message-ID: <20250803122015.236493-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, This is an updated version of my previous patchset[1].
 In the earlier version, XArray was used to collect FCP address handlers.
 However, in typical system, only a few handlers are registered, and using
 XArray for this purpose was unnecessarily complex and [...] 
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
X-Headers-End: 1uiXhS-00054L-3o
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

This is an updated version of my previous patchset[1].

In the earlier version, XArray was used to collect FCP address handlers.
However, in typical system, only a few handlers are registered, and
using XArray for this purpose was unnecessarily complex and inefficient.
A simpler and faster approach is more appropriate here.

In this v2 patchset, the kernel stack is used initially to store up to 4
handlers. If more than 4 handlers are registered in the system, a buffer
is dynamically allocated from the kernel heap.

[1] https://lore.kernel.org/lkml/20250728015125.17825-1-o-takashi@sakamocchi.jp/

Takashi Sakamoto (4):
  firewire: core: use reference counting to invoke address handlers
    safely
  firewire: core: call handler for exclusive regions outside RCU
    read-side critical section
  firewire: core: call FCP address handlers outside RCU read-side
    critical section
  firewire: core: reallocate buffer for FCP address handlers when more
    than 4 are registered

 drivers/firewire/core-transaction.c | 91 +++++++++++++++++++++++++----
 include/linux/firewire.h            |  4 ++
 2 files changed, 85 insertions(+), 10 deletions(-)


base-commit: 7061835997daba9e73c723c85bd70bc4c44aef77
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
