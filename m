Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D2DB18FF850
	for <lists+linux1394-devel@lfdr.de>; Fri,  7 Jun 2024 01:51:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sFMtV-00068C-F7;
	Thu, 06 Jun 2024 23:51:46 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sFMtU-000684-94
 for linux1394-devel@lists.sourceforge.net;
 Thu, 06 Jun 2024 23:51:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sbGYsNm3EAX9zOM5lpa8OVKFNwjt6nSlwmTErxltP9E=; b=kZqU62g/uP1mxLDGjMDXI63piv
 L4xvAvklUt1IUp2POpJHcoMI2NE6Xgc7wXiSJrSXgrq75GHaOnYlljf/pq/jtnm+LcDPk4i5O+B0v
 nbm/W5kwoZXfEzeY6D3rCsSP/jgBsd2xcdx2cBWcCQMhAsFEhIVKWr+XaAIe93zw7ex4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=sbGYsNm3EAX9zOM5lpa8OVKFNwjt6nSlwmTErxltP9E=; b=a
 9roXL81dfZ9uq38q6tJUamq+JliDex6dK24AsL3sE/UIfSey0+jKdHIqPo2Baxy/DMP0N2RUCHaIN
 IJeor7tk78ACoyH1peEC1cCNcqqQsH45iEn6VeR0o1/YT2EJN/Nm76yZEmWLKLox4XD8ynmlXbW17
 TeTREnL5S2ZUm9sg=;
Received: from wfhigh4-smtp.messagingengine.com ([64.147.123.155])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sFMtV-00080O-Ii for linux1394-devel@lists.sourceforge.net;
 Thu, 06 Jun 2024 23:51:45 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailfhigh.west.internal (Postfix) with ESMTP id 16A3E18000BD;
 Thu,  6 Jun 2024 19:51:39 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute2.internal (MEProxy); Thu, 06 Jun 2024 19:51:39 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm1; t=1717717898; x=1717804298; bh=sbGYsNm3EA
 X9zOM5lpa8OVKFNwjt6nSlwmTErxltP9E=; b=Ozhe14neVtqdfE6HxMlDBpme2t
 UspFX9oV4hSNMM0iQQSFkP3I45hz/GoFbe/L06h7uA361EtLf3YvYQKY2kadm/hH
 mnY9gG0/jkpy41NIpyTJYfSp9AfoCTIEE8VbeoumvMO397LVooDXFiAiJX9Ju1Rz
 DyJ6l+XxcZWuDZKNn8RDoHHnI3mR7qQMQWp5FpKMhreHwwOzEXKax7YFZEqtfy7H
 b7xr4oq2/5MwCe2RmRL826COYtiHU8PFJeOzPFV0aR/3i80C0SiGwwaFcMKbbq32
 OOxtk5FdH1lZfJsalpF5hQ9h2QwcJNPH8Cfgi0H8H6TwQUC4/CSWn+UAQl/Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; t=1717717898; x=1717804298; bh=sbGYsNm3EAX9zOM5lpa8OVKFNwjt
 6nSlwmTErxltP9E=; b=RvRJ654rPuK4cXr1gcIE9Bpf7/rmZ0CqUfL+mnVxSwQQ
 DfWi1pj/2P7d7BRmkqWvtHkx0LejkYXUVSUcYIKQMNjjUqIbyA23FUhfB257/ui3
 pG+FBiCjewuDM4skM91/hP1JqHCmZ6NuDnvZPDlt8a5ilG4YiQMrX87VYkGSfy12
 sWfZiMacavcE2IX2LO7IYIdMzH/+G8VFKhBtoHE0FFgKkxApE/WmU82TWEI/cvw5
 jyZe4NVVzMJZTnoD6y+3d83uadXkJNqhVZWzgQGvMkTgX5ueDliUxuxFSuiU8w3R
 Ax92SLexaIuT9jtdqrdD00WNRf2fWBBrglwvzwCb2w==
X-ME-Sender: <xms:iktiZtQ1TyciYjdZIvjiXQ6K69e3rWXzNYzJwrB2YLIJhDgsfI-i1w>
 <xme:iktiZmx_fKbdcc8_4uEasX0Pw-X9tvFYu0ckwEOwy-o2m7LZnQSAbxQm5U4u8t3js
 JxdJkOm1U_C6eMIW7c>
X-ME-Received: <xmr:iktiZi2hbdQH0htPzpSEXsp9DUF2OTedyIsN917qypx61BRgMY24nhoxDRH91ElNk39IXRdVO5fEmwNpbm2tBZx2PjtFG_AaMjEYb4uvM6iV5A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvdelledgvdejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffoggfgsedtkeertd
 ertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeffvdeuleffve
 ekudfhteejudffgefhtedtgfeutdfgvdfgueefudehveehveekkeenucevlhhushhtvghr
 ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrg
 hkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:iktiZlB629F4SpCCiDuNgsQ3kPhgDmNAeNH2RTAdOg3_tHa9N6hD5Q>
 <xmx:iktiZmi4WuhaH9Tf0T0KyeuWwbwjJBTifNqmdDAlHEwJqtQgGRI1Jg>
 <xmx:iktiZpqQFCGcx51z4KRjmmvoPMNUrNzQVUxvVCeDpOWrfGKWTqU83A>
 <xmx:iktiZhh_QdymlzSURVFARojBB4bifAgSgyb4D3DzRZF_g8tsEtfbHw>
 <xmx:iktiZptqDUhSFUqg-VBoQILGLkfcyg2A387rHEo5QP_4dcIzJsLrS9Sl>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 6 Jun 2024 19:51:37 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 0/2] firewire: add helper functions for phy configuration
 packet
Date: Fri,  7 Jun 2024 08:51:31 +0900
Message-ID: <20240606235133.231543-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, In recent months, the batch of helper functions was added
 to serialize and deserialize content of packet in IEEE 1394 protocol. This
 series of changes includes some helper functions for phy configurat [...]
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [64.147.123.155 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [64.147.123.155 listed in bl.score.senderscore.com]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [64.147.123.155 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sFMtV-00080O-Ii
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

In recent months, the batch of helper functions was added to serialize
and deserialize content of packet in IEEE 1394 protocol. This series of
changes includes some helper functions for phy configuration packet as
well as some KUnit tests for them.

Takashi Sakamoto (2):
  firewire: core: add tests for serialization/deserialization of phy
    config packet
  firewire: core: use inline helper functions to serialize phy config
    packet

 drivers/firewire/core-transaction.c       | 22 +++----
 drivers/firewire/packet-serdes-test.c     | 79 +++++++++++++++++++++++
 drivers/firewire/phy-packet-definitions.h | 55 ++++++++++++++++
 3 files changed, 144 insertions(+), 12 deletions(-)

-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
