Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DE76B70AC72
	for <lists+linux1394-devel@lfdr.de>; Sun, 21 May 2023 07:07:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1q0bHt-0000lI-3Q;
	Sun, 21 May 2023 05:07:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1q0bHr-0000lA-0y
 for linux1394-devel@lists.sourceforge.net;
 Sun, 21 May 2023 05:07:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JyjNCR1jGKbtoP7Pkr28ibLSbpbQ2tkQRL67UKxt1PY=; b=Rmr3VxZ1UCByT1wpsE7w9OrhDr
 Id/EmyM4r0g2c0NI/05LZMpYsOS7skaN2RZEVnNlLZOQZ2xx2ro74+yH0Vr9i8X8Ntd+JFb+qypP7
 L4N8BTCPL4WiqniWxDt1o4u1rzv7LHAY34lLyxqsMckvuf5Fcoge+uNpn3wCl+FvZAPc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=JyjNCR1jGKbtoP7Pkr28ibLSbpbQ2tkQRL67UKxt1PY=; b=d
 OoYJWIHMwS/M5G4fDFXX1ORYbeB31DeYxLtRX2imNrvWB6ubWYD3pKBdo+sLM3bccC7qTik99DtU1
 CguTVWFhS0iBSIk1ZO+Nslp9f0APjOkTJcaA6M6sB9JE+DLnThqFUdGpdHKxz8KAKAuehDxymSFuX
 7+XYfGbCvmY6ssg4=;
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q0bHm-00EhuO-UZ for linux1394-devel@lists.sourceforge.net;
 Sun, 21 May 2023 05:07:18 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id 6D9B5320082A;
 Sun, 21 May 2023 01:07:07 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Sun, 21 May 2023 01:07:07 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:message-id:mime-version:reply-to:sender:subject
 :subject:to:to; s=fm1; t=1684645627; x=1684732027; bh=JyjNCR1jGK
 btoP7Pkr28ibLSbpbQ2tkQRL67UKxt1PY=; b=u7mnEZuJNGO6SvKSwWgUjSmWee
 Q5MqFw55a4TTOuqmFCgrprDLkF0xP0mMFudgBxoWg1hmztr2lisoxWqWr4cb+/uU
 hR9TqI1Px8DaYdO5VF81dNBXWvgbRr+bvojrhULlKSKqK3bW/svMo09lb1FJED1k
 yz3M+iVP6PcRVDGjdVGo0tOOF20K63+x0F2ruJrF08c7Mink+JpROdHFS54G2/sF
 wjhbD/L91T1dh8IYLWtMBtYPEL+hUlCxF/y2QvQtjJ/ybYS04XaKQ8j2QVo52Zhp
 nCdnDEaei6OVRuIbU3r1EXI9n4pI8Zez1v4p2E7bwf1KnwKImGr7NKvU3Rqw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:message-id
 :mime-version:reply-to:sender:subject:subject:to:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1684645627; x=1684732027; bh=JyjNCR1jGKbtoP7Pkr28ibLSbpbQ2tkQRL6
 7UKxt1PY=; b=ZK7RHv+0C9rPw8C24JSE+l0o/mTpuEeF/Igec0xraZWvo4hXWzi
 TZaYvSTdQq1NRTGcmp+3+weywyFFxqyKo9kwnlAcgptW88S7GwttyG/c1/CV2lqB
 bVXSfAE8TebyjNbt8zh+4A6YvgQG/QAKAt11LUgXVK3TjYX6VaVE7F9UoaeQeLpF
 iUjIsGXyQYPkydH5JRs/nwVnGDaj+IhmQ47lxznKwuOBU9KoWTrU+Q+83cx/wdCH
 7HVQdTH3PKyJGsECoGBJ0DmQCHJpaaQNcqqSNOoI3k1AFHtr+6IoxNvScUfUzzhn
 mzyEZDaEuv9IoAk8Q4mPCEB1kWcXgXNCGQg==
X-ME-Sender: <xms:-qZpZAQ1AWjSsBRkOqIhCilGXI0yuXPE7khK5Ujf28DWQKJ2XQhiFQ>
 <xme:-qZpZNxGy_1Hi-J9Aw7cgR1mFPLgwSdsk93TJllHTaYxCqe0Yle9tdscDCbnVAVOC
 IgMjxqvKcx0qcvHTJ8>
X-ME-Received: <xmr:-qZpZN0rZ8NhjwguDjrhn_sr3C3FJA8_GCChuipXkniB0uYaiRHZ1Hg5JkoVAc-aWaRzlCjGzdKHMwuMGr0UaSUoALr0xT16muA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfeeikedgledtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfggtggusehttdertd
 dttddvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeevkeehffdtge
 etleeujeeuieegtddvheevjeehieeuhfekledtkeeigeduudffkeenucffohhmrghinhep
 khgvrhhnvghlrdhorhhgpdhorhhguddrihhnpdhgihhthhhusgdrtghomhenucevlhhush
 htvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhi
 sehsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:-qZpZECn9T7Nz5lSqusdgrjNoQRpCeMz7Q2M2xEn2N-7m7VHB5n9bA>
 <xmx:-qZpZJh6H27QgM1JUmhMyDH_ydxDb6dv6cpnuU8Fb_y7oM-DZipccg>
 <xmx:-qZpZApfkoDIGbHkcOx7K6VkDtvlZuEMDPj6Qr9BkjXsg0gWdkUk1Q>
 <xmx:-6ZpZJIHyQZHLV_zKuinTYJMbMpHb4vU4buu9-0aJydwxB6sO1AOmQ>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 21 May 2023 01:07:05 -0400 (EDT)
Date: Sun, 21 May 2023 14:07:03 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: linux-firewire-utils v0.5.0 release
Message-ID: <20230521050703.GA106678@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net, clemens@ladisch.de
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, Today I released version 0.5.0 of linux-firewire-utils.
 You can download the new release from the following URL:
 https://git.kernel.org/pub/scm/utils/ieee1394/linux-firewire-utils.git/tag/?h=v0.5.0
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.21 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1q0bHm-00EhuO-UZ
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

Today I released version 0.5.0 of linux-firewire-utils. You can download
the new release from the following URL:
https://git.kernel.org/pub/scm/utils/ieee1394/linux-firewire-utils.git/tag/?h=v0.5.0

This marks the first release since the project was hosted at
git.kernel.org[1]. In this release, crpp tool has been removed due to
Python 2 and license issues. Instead, a new tool called
config-rom-pretty-printer has been added as an alternate. This tool is
implemented in C language and closely resembles the output of the original
tool, capturing approximately 80% of its functionality. However some
legacy functions, such as the firecontrol parser, have been dropped.

The original tool is maintained by Clemens Ladisch and hosted on
github.com[2]. However there has been no activity on the repository in
recent years[3]. As a result, the project was forked to git.kernel.org and
is now maintained by Takashi Sakamoto.

I would like to take this opportunity to express my gratitude for Clemens
Ladisch's work on the original tool. I am delighted to be able to release
an updated version after 8 years of silence.

[1] https://git.kernel.org/pub/scm/utils/ieee1394/linux-firewire-utils.git/
[2] https://github.com/cladisch/linux-firewire-utils/
[3] https://github.com/cladisch/linux-firewire-utils/pull/1


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
