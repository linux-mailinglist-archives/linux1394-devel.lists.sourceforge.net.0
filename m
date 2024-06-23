Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 935E7913ECF
	for <lists+linux1394-devel@lfdr.de>; Mon, 24 Jun 2024 00:09:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sLVOa-0006hy-LA;
	Sun, 23 Jun 2024 22:09:13 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sLVOY-0006hp-Kl
 for linux1394-devel@lists.sourceforge.net;
 Sun, 23 Jun 2024 22:09:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7RfH6xhO8xdDINnoMarHvc5Ol6E8OWCY9oRseH1LoUY=; b=SQGavLw23DKX7UT0qw40ENx+4C
 k6Hn77HJL9g1UFqRvn/YgN9HWuHjExOFPo+R9XcHnOrRiyyUPN/Sz2OghFpemYz6L37nmYdaVBoou
 wfzZlsmUwvTUNi9Uj83fSic3K4pXnds6EwDGrNHgr2OLCQ1bmhbFN9Z33UVFjkWK4YQo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=7RfH6xhO8xdDINnoMarHvc5Ol6E8OWCY9oRseH1LoUY=; b=W
 CsmapeQ/UMU6wMZ2GXeG6gggaPs725WbMFCVOF2N7My+r1DO/ykBuJ+aq8QfM4H51qyimE/xGmDDy
 Nw+9wswUvy9+aHP1eNBXgWwcpHEynhrZeo6dLrdDBwTYb/GmA12whKi1HfDSrIXf6k0UlpmhuyX3V
 NAKo1IwRc5figID4=;
Received: from fout1-smtp.messagingengine.com ([103.168.172.144])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sLVOZ-0002Jh-G3 for linux1394-devel@lists.sourceforge.net;
 Sun, 23 Jun 2024 22:09:11 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailfout.nyi.internal (Postfix) with ESMTP id 09F0F13801B1;
 Sun, 23 Jun 2024 18:09:05 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Sun, 23 Jun 2024 18:09:05 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm2; t=1719180545; x=1719266945; bh=7RfH6xhO8x
 dDINnoMarHvc5Ol6E8OWCY9oRseH1LoUY=; b=RjQ8467URtKcCL6dcoqvvRkSr+
 cHpSA45roZWyXr+V8DZKpVVgbP8iml7IqayfKuszVDUm6n10YQsR4XoOu8M2HXSt
 Pjo9sDY/Hcg/TNgtEWhJlvAoQorVqM76J/2h8Djl2lVmjQ+Ty2zbVmWXKHZfGV5L
 2TJ0kJZ0Mh3LfBaQruPa+2He95TUjkxdvCIdkAniR739KHHmDyEpapFqnnH2lw5S
 /tNDxfE/4saIRe+FDEoGG0/Jt2HZWvG4IRvtM9fDK/ANkNpkNO5CZ/z39iEqUaC1
 XO/qkSEr+W4F9B0fBGfLisj7w5Tjr6DCa/WfkxRBd66GkEaMWH7wBAisA0WQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; t=1719180545; x=1719266945; bh=7RfH6xhO8xdDINnoMarHvc5Ol6E8
 OWCY9oRseH1LoUY=; b=TK6HfC46PGuzLGUGNfbj6/k/Xp1t/4d5fYUTZxpJBurZ
 jhQXGqYlJRs+9f97ZXippmp8UcijvB3/A+1ThmQxt2Quep63hYomrNpTB1UfRoMs
 5IY5+i9yl1NGSid/xt5R7BnIilxxF/0yxOdjsEdUbgClwEnrhY4brmkurirI6TBv
 fLUo4rV9ngEl+gapYQzphzjWfbk9vN68FsKxCyCECQ/vSEHc7dNBahZJFV8ZPcFQ
 1240w/LYTC4PGlcsbzj0hEBw/sK+umXX/BTzPfPWfx7YYaQEGEelIF95LLRQPPg8
 3cvwy4UVcV4EYCIIjUQ5GRgjdcERO5BubWhqPG48gQ==
X-ME-Sender: <xms:AJ14Zta16LOs7O2qpzb2iI4dOBvgEloMmyghTYOTF_BOLtvwaJcFdw>
 <xme:AJ14ZkbMsSrjjWA33QiwmsVQ04IpBhG9hCSFBbncAUKvqsbbHV7jOMvmz6YWrW2c6
 Wf2UJ3zEt44WJWx9LQ>
X-ME-Received: <xmr:AJ14Zv81I-en1RVFeOMD5GUSpDpISBJe-DuUdTU8FFyPRdb4ZpCpBx7UK59k-SW4D8yPtjPDjqKSGgQz7XETBJDT5HJDXlMY5KmXGhndJTGJ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrfeegtddgtdejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffoggfgsedtkeertd
 ertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeffvdeuleffve
 ekudfhteejudffgefhtedtgfeutdfgvdfgueefudehveehveekkeenucevlhhushhtvghr
 ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrg
 hkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:AJ14ZrqDeDpmhPPEmN6nC0xaU2ujMkU0UAKBKVnD9UpqBrnWOQ06kQ>
 <xmx:AJ14Zor2ZCM6Ra-wXSHwPSuml0d3z54PpP4tpW_z3S039uCRUbYc-g>
 <xmx:AJ14ZhSRmztKWfHDLydP1H4R0eZ0UQFJk-ywGh74JsqkCy7np5WiJg>
 <xmx:AJ14ZgpPoq4TV7RYbRiRZ9olmOMA5pP7awcOyOKBDszLLajjX3WvHw>
 <xmx:AZ14Zv2K4FmrXjLKFQZewaLzOXPRiLkb-mD1dR6cmQ59IZJd1g58GzQS>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 23 Jun 2024 18:09:03 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 0/7] firewire: core: add tracepoints events for isochronous
 context
Date: Mon, 24 Jun 2024 07:08:51 +0900
Message-ID: <20240623220859.851685-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi,
 It is helpful to trace any operation for isochronous context
 for debugging purposes. This series of changes is the last part to add
 tracepoints
 events into core function. Takashi Sakamoto (7): firewire: core: add
 tracepoints
 events for allocation/deallocation of isochronous context firewire: core:
 add tracepoints events for setting channels of multichannel context fire
 [...] Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.144 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.144 listed in bl.score.senderscore.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1sLVOZ-0002Jh-G3
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

It is helpful to trace any operation for isochronous context for
debugging purposes. This series of changes is the last part to add
tracepoints events into core function.

Takashi Sakamoto (7):
  firewire: core: add tracepoints events for allocation/deallocation of
    isochronous context
  firewire: core: add tracepoints events for setting channels of
    multichannel context
  firewire: core: add tracepoints events for starting/stopping of
    isochronous context
  firewire: core: add tracepoints events for flushing of isochronous
    context
  firewire: core: add tracepoints events for flushing completions of
    isochronous context
  firewire: core: add tracepoints events for queueing packets of
    isochronous context
  firewire: core: add tracepoints events for completions of packets in
    isochronous context

 drivers/firewire/core-iso.c     |  32 +++
 drivers/firewire/core-trace.c   |   4 +
 drivers/firewire/ohci.c         |  25 +-
 include/trace/events/firewire.h | 463 ++++++++++++++++++++++++++++++++
 4 files changed, 518 insertions(+), 6 deletions(-)

-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
