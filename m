Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 830148FF7E4
	for <lists+linux1394-devel@lfdr.de>; Fri,  7 Jun 2024 00:56:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sFM1l-0003Dg-Uk;
	Thu, 06 Jun 2024 22:56:13 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sFM1j-0003DV-TT
 for linux1394-devel@lists.sourceforge.net;
 Thu, 06 Jun 2024 22:56:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uWKKo+Z8UTJJDqqZjBiSEu6T/aRvEGy74QcpJ0XTx8U=; b=XXQqXrEycuhs2Sbl41fGm0OjCl
 g2aKIo+Q8jP4bo+XVw53AyIw+TfzUaXOasdX04xmdxwQbtFD0WH/+JUXJzTauseeI37d/D1QbBQog
 O5w4UziVHMxzGSzhoOnRSkidXKAX7NCAFtsWX/lUSFypNgl/bw+jSd2kAIEdYR25d1UQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uWKKo+Z8UTJJDqqZjBiSEu6T/aRvEGy74QcpJ0XTx8U=; b=WN6mg4TaLzV1sXbElGLA/VRyJY
 YU0fVhiCdrl9FGi9/FP8ILGsHWtuT2tW8Ei4wbZl9EuFnk+z7BSi4kJVna6t7syR5jHvJpRx285af
 ANkpUelsx1KBRRfIW/LjL0HH7vq+q4/A6SZd1E8NoX0r9g4ISUH4vZxohw2Y/l4jByg4=;
Received: from wfout1-smtp.messagingengine.com ([64.147.123.144])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sFM1i-0005j0-P3 for linux1394-devel@lists.sourceforge.net;
 Thu, 06 Jun 2024 22:56:11 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailfout.west.internal (Postfix) with ESMTP id 7431B1C0010F;
 Thu,  6 Jun 2024 18:56:03 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Thu, 06 Jun 2024 18:56:03 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1717714563; x=
 1717800963; bh=uWKKo+Z8UTJJDqqZjBiSEu6T/aRvEGy74QcpJ0XTx8U=; b=Q
 OsGYsoppG7dFB8jiHpKxVcxe6gRsKERnijgQ/xZOBha5oXB5+6tdWgFpdkA5GBWx
 hn6RxEreTSG8UwdCTPaVn31gTeWOUyd8GwJJDq0wSIpwUeKgSm66WrQj3DDt9bKX
 7QU/20XPiUfWl0qN40udqn0L1BQsYnb6OU0Oq4E5V8/UVU1ziCuMRQKUPhkUbnmq
 gKIKExyS3p7/A3qsPz1mX67CgNJ7yhKMSqEnLoMNblIQ34NyZ+EDlSpdmfmrkW3Q
 R5o9z4w8cNgCCSOKuiS4BUw507eFl0jtmfNznSL7wtk/su/yvScdon7ApjrmzkMX
 mbVySl0qBJsb86hcr/D+w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; t=1717714563; x=1717800963; bh=uWKKo+Z8UTJJDqqZjBiSEu6T/aRv
 EGy74QcpJ0XTx8U=; b=ZIxlo2X5hw0KFX5P+wnncHigxcha3u+cD7Npo+sGSwtI
 Nm+aYT7rH6YQFsLF6v95o+dwLHI3UV957XsT4HYwnuyJMZLdiprZgSB8uoTjep0v
 XtSaIYTOhy403jGw1YDw23macw6RseGVemYZAqq8ZUUYXD94bFGRD7mMDDJjuyVF
 2zlY37mrBIUNW27cPXceb42s09odVHrefPthbA7pJ1d46gF4ULfGgJr5EN0M/kZW
 3cnZy/w8hQFTXT1J0OiiXVbdsEKd9tUIM2G27FxoWEo5oMdPyNg2OmWWV1KjfLYD
 coYQtd87ASFVo5x7y6v4wTs/gFypQn/nXj1ZjNWCig==
X-ME-Sender: <xms:gj5iZtHH3SzNFE6pXiB77fd9uz0MVNwcvXeBBb3Tw4KgB1W9XWmXPw>
 <xme:gj5iZiX2lRY9gYZ5RI4AJ5987UqmcNMttsnpZo-yl0RoUZoHP1PWY4zLcqAQE9Due
 v03iZMZ8fZ3kya59G0>
X-ME-Received: <xmr:gj5iZvJje1DyQI2y_SMUQRuzNBul5V239c4St7A3wWBBe6H7xUhi7FZUrHnBxpsP55vbDe7bsy2Nex5s5JdcOMFizj43q6dV3NI>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvdelledgudeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfhfgggtuggjsehttd
 ertddttddvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeehhffhte
 etgfekvdeiueffveevueeftdelhfejieeitedvleeftdfgfeeuudekueenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:gj5iZjFmUGQP7iWnhe5oJVPqUw9rF4WZ76GoLzx6lp6tMB-LYmsRwg>
 <xmx:gj5iZjVNe-GjKOIRne3QltgnFBEuVH3HksvKd5dt0E19taMEMk8-yg>
 <xmx:gj5iZuMZoGz0ifLv54qHgT1emz8GMMGC0zjDMuGbpI6etdCFBlWx_Q>
 <xmx:gj5iZi2JTkFx0-BNKPaENCmg-OmlrwNMopdc6DnnfYk584pm6gFuqg>
 <xmx:gz5iZgjsTHY7VdEZRRKhXdPAhSK_YG6Ok8-wUhkUlq6Ssz2gCVio2wBJ>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 6 Jun 2024 18:56:01 -0400 (EDT)
Date: Fri, 7 Jun 2024 07:55:59 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH 00/11] firewire: add tracepoints events for self ID
 sequence
Message-ID: <20240606225559.GA179534@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20240605235155.116468-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240605235155.116468-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Jun 06, 2024 at 08:51:44AM +0900, Takashi Sakamoto
 wrote: > Hi, > > In core function, the enumeration of self ID sequences is
 the first step > to build bus topology for the current generation. [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
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
 [64.147.123.144 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [64.147.123.144 listed in sa-accredit.habeas.com]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [64.147.123.144 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sFM1i-0005j0-P3
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

On Thu, Jun 06, 2024 at 08:51:44AM +0900, Takashi Sakamoto wrote:
> Hi,
> 
> In core function, the enumeration of self ID sequences is the first step
> to build bus topology for the current generation. Currently, 1394 OHCI
> driver has a module option to dump the content of self ID sequence, while
> it is implemented by printk. My recent work is going to replace such
> logging with tracepoints events, and this series of changes is for the
> self ID sequence.
> 
> The content of self ID sequence is delivered by a kind of phy packet,
> and its serialization and deserialization codes exist in both core function
> and 1394 OHCI driver. They include some redundancies, and the series of
> changes includes some inline helper functions to replace them.
> 
> In the series of changes, some KUnit tests are added to check behaviour
> of the enumeration and the helper functions.
> 
> Takashi Sakamoto (11):
>   firewire: core: add enumerator of self ID sequences and its KUnit test
>   firewire: core: add helper function to handle port status from self ID
>     sequence and its KUnit test
>   firewire: core: minor code refactoring for topology builder
>   firewire: ohci: minor code refactoring for self ID logging
>   firewire: core: use helper functions for self ID sequence
>   firewire: ohci: use helper functions for self ID sequence
>   firewire: core: add common inline functions to serialize/deserialize
>     self ID packet
>   firewire: core: use helper inline functions to deserialize self ID
>     packet
>   firewire: ohci: use helper inline functions to serialize/deserialize
>     self ID packet
>   firewire: core: arrangement header inclusion for tracepoints events
>   firewire: core: add tracepoints event for self_id_sequence
> 
>  drivers/firewire/.kunitconfig                 |   1 +
>  drivers/firewire/Kconfig                      |  15 ++
>  drivers/firewire/Makefile                     |   1 +
>  drivers/firewire/core-topology.c              | 219 ++++++---------
>  drivers/firewire/core-trace.c                 |  18 ++
>  drivers/firewire/core-transaction.c           |   2 +-
>  drivers/firewire/ohci.c                       | 148 ++++++----
>  drivers/firewire/packet-header-definitions.h  |   2 +
>  drivers/firewire/packet-serdes-test.c         | 255 ++++++++++++++++++
>  drivers/firewire/phy-packet-definitions.h     | 247 +++++++++++++++++
>  .../firewire/self-id-sequence-helper-test.c   | 152 +++++++++++
>  include/trace/events/firewire.h               |  61 ++++-
>  12 files changed, 935 insertions(+), 186 deletions(-)
>  create mode 100644 drivers/firewire/phy-packet-definitions.h
>  create mode 100644 drivers/firewire/self-id-sequence-helper-test.c

Applied to for-next branch.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
