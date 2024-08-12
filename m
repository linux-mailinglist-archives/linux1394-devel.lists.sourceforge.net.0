Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BAD3394E48B
	for <lists+linux1394-devel@lfdr.de>; Mon, 12 Aug 2024 03:43:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sdK5V-0008TR-3F;
	Mon, 12 Aug 2024 01:43:09 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sdK5T-0008TJ-SV
 for linux1394-devel@lists.sourceforge.net;
 Mon, 12 Aug 2024 01:43:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZiDTMdIzAfO3sACDBpZRIVM7mN18dHms2sa6dSgiMJk=; b=ikOxdX9zgWcdUDmulDFiDsnglJ
 75IanlY5Yc8uSLb8AIQ3c7/IlhXTrkwQNh/zValjHeug0k4LliB0kQsn+6sOmuEdZR9L5VLGbw17r
 MZHvDnNd+Vf7ow1UXP0ADVwO82W96egMCTQiSEoXqbsA7yoEn0FlfxynS00toYtTm76Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ZiDTMdIzAfO3sACDBpZRIVM7mN18dHms2sa6dSgiMJk=; b=K
 itxBAWsJH08G2dYKgm3XcLCgmQG4R8WhouUqsEA+oFF4jNKukZXOfMPDfJ9Je2Zaaxs9aEFxiRq2N
 JTyv6/iAtev0BsjWAiUn2IrfEANTXntrHgB9JX76/iuCfBy1C0GNOUF3hqUtjjrDI2N15heDoz/tq
 gb9Ck4CKRqqtRZG8=;
Received: from fout7-smtp.messagingengine.com ([103.168.172.150])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sdK5S-0006A0-IQ for linux1394-devel@lists.sourceforge.net;
 Mon, 12 Aug 2024 01:43:07 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailfout.nyi.internal (Postfix) with ESMTP id DA05A13854CF;
 Sun, 11 Aug 2024 21:42:55 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Sun, 11 Aug 2024 21:42:55 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm3; t=1723426975; x=1723513375; bh=ZiDTMdIzAf
 O3sACDBpZRIVM7mN18dHms2sa6dSgiMJk=; b=UVg+UuwZuYPH7KLqT72kJMuz0X
 EkgT954BDNgWRN/L1OIsb5MkzvGoU38j9jBRzHT7XDRUUewm5NjQNYKxvkEpB/Gx
 wWIDtzbjXNE8olB7sMUiE6xBqQRm96kSNxg7zG8r9qU4jGDsD+jeEXqCiXnrP9gJ
 GA66D+CFFtIuDx9FB9Z1t8Vm2K/Li0l1TojmfljQ+FmiymFjNvTGP37NMdK0YPkY
 ugB9hPQ5E1AzYQPgr9SxIFgS1Z4DKS+R/eB33/eAWYbULmWwIDWE67xNnFIQ1pgU
 KBhA0dsrq25JfDRqCXOAuK7EomoxCe6zpCUZ9EKmHkVhU1qHufcPmdmCRVbw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1723426975; x=1723513375; bh=ZiDTMdIzAfO3sACDBpZRIVM7mN18
 dHms2sa6dSgiMJk=; b=TTVVxOuviZoD62rOeHX++ppFYV35hFaEe+D7jreyKTsv
 Bky0CVDaohhUHoH6KnTVdEqBBH2o/yfMatroiZtzsDEUi3iFIJUyKMT8v3zzWYWO
 cU4iXUWZ4VHowo4o/0G0hV5gd3QvldLGbZUdlnhov8Vlf21gtM6hSvhC4innFTDu
 L3e6DOVfA2xzS9o5jrLWCa+QcBV8jpeyuVnAAUkDSoTg9eEwlXHUzKdTmnIbb0a0
 eLrlflWUAc8eYIdJg7LJblj6mRNMf0dkf0vGjoE35OwZSa+9gxcyS51ZO80tD2H4
 uuxojAjRw2uH/zHF1bZ/oqThXNg3pvVQ/+bYwH66xw==
X-ME-Sender: <xms:n2i5ZoDTOcIZ6SaNoqPOHn6ECRrNdMOaq8HN_e5q_7h1YNy-CCVZ5Q>
 <xme:n2i5Zqgpmuglol0WD1LhGlwKoWDfW6x4ibgsoSKP5IQacW-GUdNVl4RqxwGoNn0Iz
 n3nIRP3hm_lsB3Lbks>
X-ME-Received: <xmr:n2i5ZrkEUZnhORYv6ycDUgzKp_xZYfXPN3RsRVhhtE5nc3QSvGbf1fWQU2nobyqYxkHbesl3XY6papvHxd27i2uC5SZuwPvPAeQV52pvf-N6nw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrleelgdehudcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdpuffr
 tefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecunecujfgurhephffvvefuff
 fkofgggfestdekredtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothho
 uceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvg
 hrnhepffdvueelffevkeduhfetjeduffeghfettdfguedtgfdvgfeufeduheevheevkeek
 necuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqth
 grkhgrshhhihesshgrkhgrmhhotggthhhirdhjphdpnhgspghrtghpthhtohepvddpmhho
 uggvpehsmhhtphhouhhtpdhrtghpthhtoheplhhinhhugidufeelgedquggvvhgvlheslh
 hishhtshdrshhouhhrtggvfhhorhhgvgdrnhgvthdprhgtphhtthhopehlihhnuhigqdhk
 vghrnhgvlhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:n2i5ZuykLB-BEbLasE0oSG5SD2GCn0oW5FV5bjP3TxMp_8I7iUZ_VQ>
 <xmx:n2i5ZtQEAlARQuZB8P2wGxF2f3j6Y5TL4FlYKmEy4zGJ49Atb_9Vgw>
 <xmx:n2i5ZpYiia2Nb5wNS1DSzup-9L1PLmSGtCGXPW3G09XyKGP3TAW6Kg>
 <xmx:n2i5ZmQPXIFVK994kiff7BHOqD36S1GKwOGvK0BMs08l7rDdzDScKQ>
 <xmx:n2i5ZodYsawScSv4n_GYStBPD1nDceSodU8YgNFtKXM2nIp8JzSZM0N5>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 11 Aug 2024 21:42:54 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 0/2] firewire: core: use XArray to maintain firewire device
 nodes
Date: Mon, 12 Aug 2024 10:42:49 +0900
Message-ID: <20240812014251.165492-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, In core function,
 the instances of fw_device corresponding
 to firewire device node in system are maintained by IDR. As of kernel v6.0,
 IDR has been superseded by XArray and deprecated. This series of changes
 is to obsolete the usage of IDR with XArray. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [103.168.172.150 listed in wl.mailspike.net]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [103.168.172.150 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sdK5S-0006A0-IQ
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

In core function, the instances of fw_device corresponding to firewire device
node in system are maintained by IDR. As of kernel v6.0, IDR has been
superseded by XArray and deprecated.

This series of changes is to obsolete the usage of IDR with XArray.

Takashi Sakamoto (2):
  firewire: core: replace IDR with XArray to maintain fw_device
  firewire: core: use lock in Xarray instead of local R/W semaphore

 drivers/firewire/core-device.c      | 30 ++++++++++++-----------------
 drivers/firewire/core-transaction.c |  3 +--
 drivers/firewire/core.h             |  3 ++-
 3 files changed, 15 insertions(+), 21 deletions(-)

-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
