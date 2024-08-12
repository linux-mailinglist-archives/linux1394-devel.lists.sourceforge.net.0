Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A0EB94FA6D
	for <lists+linux1394-devel@lfdr.de>; Tue, 13 Aug 2024 01:52:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sdepo-0005W3-PQ;
	Mon, 12 Aug 2024 23:52:21 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sdepn-0005Vv-7F
 for linux1394-devel@lists.sourceforge.net;
 Mon, 12 Aug 2024 23:52:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OvwBSx5sswpPM9gzQtgAIKFWJVfBWE1PlVCsQqD/Reg=; b=Ova4v3kv6+ZRZVgnoXmgZug4mX
 GdzoBfdLTOEeC/Zd+225Pg0Ytqmp6Mxj0Nz4WcR+A8H1bDY3svNEVz2D9KDI80L2vklDp9Jv4p525
 lVmGMLZhWokf6CAcRud84z29KGAG//DTtHoWa0UQFMF+wR4HX52tn2fGzRbNDCyb94nw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=OvwBSx5sswpPM9gzQtgAIKFWJVfBWE1PlVCsQqD/Reg=; b=k
 YKb8g7dSTyHEFbHeQLIxC4INs+MiNNvinyFt1ZGhDUwD3mD++0Fthbu9IRedwz4UP2/MgLS0mvQDm
 bOexUrzS54Eo1U6lHz0+w7pQ9C0zbnBV/G/9Zut+HN1D0YIKanw24x15xHytXDt1//8/ZH3ycx2Xq
 4ZYsTBX6xU/c7f7Y=;
Received: from fhigh8-smtp.messagingengine.com ([103.168.172.159])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sdepn-0002D0-1O for linux1394-devel@lists.sourceforge.net;
 Mon, 12 Aug 2024 23:52:19 +0000
Received: from phl-compute-04.internal (phl-compute-04.nyi.internal
 [10.202.2.44])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id 5B1331151B5D;
 Mon, 12 Aug 2024 19:52:13 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by phl-compute-04.internal (MEProxy); Mon, 12 Aug 2024 19:52:13 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm3; t=1723506733; x=1723593133; bh=OvwBSx5ssw
 pPM9gzQtgAIKFWJVfBWE1PlVCsQqD/Reg=; b=HtmNKE5qTaBWJRcCj6ZNiI0SRA
 fF8I0JM6hLMhUZ+O5CSku2XdaR7h/rA+FeB0mgFY/RTzXPuZIsRMTwH/So/oJcxY
 Qiy0PRj4uNFQf8zaVGHuveytbqcp2LTQ7q+t+gCIzaO7sb+Fp9j1W65+L8Irhfdp
 owGOzVWZOJhDzYwqz2T6Dy8I/LAGysfaQ39BKnUJAeemza9kC8RKBb1Z9S7cENoV
 ZithkHeqPjSR0TTeMdeBscd1FKW8EDD3WwDX630nHIdc7xVP7ZzBabYYTOFS7TJ7
 aY+qSsEIyuiALN/6wbyuwzPojPj7poLYqTeSh1qHQ3nihSQBQWhLHDtO8V4Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1723506733; x=1723593133; bh=OvwBSx5sswpPM9gzQtgAIKFWJVfB
 WE1PlVCsQqD/Reg=; b=Pf6vvk7rAVQVesmiKLfeVkEQATbnXRtGmI9PYEI7Cjzm
 CFgs8HOUPw+TtOuFv/g5WUe0brFWv/Riwuy1SrsMpz0vXwn66bzYaCV45dEvOq+f
 uCbQ26MI4JwWHktXnhPlh1AVg4Tr/75T2Tn5NYZOQVQFS+lsN2tAGn1zK6zynaJb
 pEBspgB3pf1W6hm7CMAsdERMjrXBsc2EajLJdFB1JqCCP2XA2xmQ6PKz4xa0K3+4
 aosikhOq8ttWpd4SIje6rJmdtMxfJmv8fvuOO7ZFlrS+GoNDGO6+rAm5SV63xiD3
 JmPqtzgERgPT/lwTfK5h7CwEKfdHyDbvyvF7r+oMWg==
X-ME-Sender: <xms:LaC6ZoYDBQsm_xp8XH4mcKopUgeZz1lLmneSJdbglg3ibEWmGxiDxQ>
 <xme:LaC6ZjYAy-3CI37epV1z41CkMxh1LfxUkdrWMMPJDJDb7PS6xj_uy12kVG3_5YMy2
 rm5ic5GUImYuZann9k>
X-ME-Received: <xmr:LaC6Zi_zx55UklXXhi-EqZ3sP_zUXelh9cM4MdKpnvv0OiMgxWawGVhacDahTL1kwlG1H5NUwLkIFZRzMu436f2zdwr7L2JCrXZZfwRq1RaP0g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddruddtuddgvdekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevuf
 ffkffoggfgsedtkeertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohht
 ohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtth
 gvrhhnpeffvdeuleffveekudfhteejudffgefhtedtgfeutdfgvdfgueefudehveehveek
 keenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqd
 htrghkrghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopedvpdhm
 ohguvgepshhmthhpohhuthdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlse
 hlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhugidq
 khgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:LaC6Ziox1nX68_NypP-_0RLFhndSKcOxtot3nifI7570mzbVYdkbjQ>
 <xmx:LaC6ZjpvWpeX60o94SmVE6KvTsF6EBCC5z2kCrSq931ZTD2T3F-uAw>
 <xmx:LaC6ZgQUzgc9m_WhiaLXcWn4nBMciZ511Egw3jdEtH9fwI9QPOe5pg>
 <xmx:LaC6ZjqvB9f2RvoQOXgp7hQZdv0GwXFKyrO2rC4cdt1zN_AOEByaZg>
 <xmx:LaC6Zq1p6oMPcE59j4BvA7y7BWl69Md4oWIJDrfq_4ou15ED3cgGsvYE>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 12 Aug 2024 19:52:12 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 0/5]  firewire: core: use XArray to maintain client resources
Date: Tue, 13 Aug 2024 08:52:05 +0900
Message-ID: <20240812235210.28458-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, In core function,
 the instances of several types of client
 resources are maintained by IDR, and the index value of each resource is
 passed to user space application as handle. As of kernel v6.0, IDR h [...]
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [103.168.172.159 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sdepn-0002D0-1O
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

In core function, the instances of several types of client resources
are maintained by IDR, and the index value of each resource is passed to
user space application as handle. As of kernel v6.0, IDR has been
superseded by XArray and deprecated.

This series of changes is to obsolete the usage of IDR with XArray.

Takashi Sakamoto (5):
  firewire: core: minor code refactoring to release client resource
  firewire: core: add helper functions to convert to parent resource
    structure
  firewire: core: add helper function to detect data of iso resource
    structure
  firewire: core: code refactoring to use idr_for_each_entry() macro
    instead of idr_for_each() function
  firewire: core: use xarray instead of idr to maintain client resource

 drivers/firewire/core-cdev.c | 170 +++++++++++++++++++----------------
 drivers/firewire/core.h      |   1 -
 2 files changed, 94 insertions(+), 77 deletions(-)

-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
