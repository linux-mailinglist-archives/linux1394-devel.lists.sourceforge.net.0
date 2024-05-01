Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AD86B8B922F
	for <lists+linux1394-devel@lfdr.de>; Thu,  2 May 2024 01:19:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1s2JEk-0004lI-Gi;
	Wed, 01 May 2024 23:19:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1s2JEj-0004l9-7t
 for linux1394-devel@lists.sourceforge.net;
 Wed, 01 May 2024 23:19:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aJ9bQTQ0bXFx75w1V4iyVyCDpPwSIeyvhFaFFkaoznc=; b=HU9NkBJPU6WlYhWv/2qvWx88M3
 JPjNL2cAkyoZg1KOkdZOSKmmVCAOVu5GLZHdHM+3vGy1avUj1x5AihA/gm04seoOIBkIHZggBWrgx
 cbF5RIT64DE4QiABB5lg+3+wi9K4zC+r2LehLIA0MZpMlBaUXxVgeGQiX50lEOssmAaI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aJ9bQTQ0bXFx75w1V4iyVyCDpPwSIeyvhFaFFkaoznc=; b=EwtDZTF6HMdNgTBFgcG3/9K3Pw
 DVdb7k2MW2ckWqH7vQPPBO0F0/hR3XfhdJHzUhVoQyok/TD5zissBuoTviGzvfE6u9mNDpZEBcg7s
 5QToAAQWE5jlh2KHw4SVMdQmBDyI45q7BkJTXr41YdEHEU5W0SHP2pZLJ+PbIXkk7VxU=;
Received: from wfout1-smtp.messagingengine.com ([64.147.123.144])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s2JEi-0004Je-4V for linux1394-devel@lists.sourceforge.net;
 Wed, 01 May 2024 23:19:41 +0000
Received: from compute7.internal (compute7.nyi.internal [10.202.2.48])
 by mailfout.west.internal (Postfix) with ESMTP id C91B01C0016C;
 Wed,  1 May 2024 19:19:34 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute7.internal (MEProxy); Wed, 01 May 2024 19:19:35 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1714605574; x=
 1714691974; bh=aJ9bQTQ0bXFx75w1V4iyVyCDpPwSIeyvhFaFFkaoznc=; b=n
 EPLbHnvn7kk3Q6HYjNnt/OXnh2RN8kQC3XElkRXx4fy6QTwG9blEl6lkid8ZwMim
 8FQi8ec1df3ls65liqVggKMSjpM+QBFJr/mddTOIjhWNETefC3/JXegbfOaBUjer
 JISoUSTAo7y804jT37zdEoPkQsZQPeL0dAl9yMsNVDHOdjFD873E9eSfrldfA/pX
 ajgFI5Y5/gDTED430KysQOfkugOQII5d40QyYK6mUXwso3a2kxYYuMCq7z5yEF/W
 ZM4KeW4ndUPYoRjnqbzG0XQARkQGUo+eW/tDQI++l+Dl5CK/nAL2j3r2GIyz2z4R
 dvCZSoYSQKWDHva1v/niw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1714605574; x=1714691974; bh=aJ9bQTQ0bXFx75w1V4iyVyCDpPwS
 IeyvhFaFFkaoznc=; b=H4vhHlVXcT7kw8wLXefLQE0IW9kvUA1YOGNJ+6u3jMt5
 r9vulwR5ilNwStsg3THwnqPVsQ8u0Zac1wWi3eB6BRtNa1THS5QbRUZUzOf0OOdJ
 0qa07qFx5UdseBIzTtekvG7ovSPmFR9sCXiAed/1opVbxbHoWzIW+8mVWzc53W16
 608mf3dInts22j0emQNJYmmmj0vyuQ/ZNO1FQ1TyzWh6NuoIriE3rojrou9dQ3Gy
 5vzRy0ksA6XriYxxs6C4/YI1PMypzbGdP31xC/+GGZMRhlmdK+IvkHLcjVZsIdp2
 /T9AVVm7Q5J+i4rhTgqFeAE4ivCYYBJ/gopfF7mwyA==
X-ME-Sender: <xms:Bs4yZuRj43ouOoEpzP8FU7k6rpScrGu09QeP69ppwqQFsSLibHkkmA>
 <xme:Bs4yZjx8trRk0btoDEE8pQ_n7Ao6XmyIkqVKoP2oF0zL8UKnvFIyhQldpBP9aJ-64
 AGYops0DDXj2DO3Uz4>
X-ME-Received: <xmr:Bs4yZr0lAWzSUccET_TrZW6auV7zr4dIt8Z8_5_4q_KoQG-UT9lA90VPCdVHNAz_CDB0ECLb8kVf8G2S6eDc0MnORsuCrzjg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvddujedgvddvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepvfgrkhgr
 shhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhird
 hjpheqnecuggftrfgrthhtvghrnhepveeilefhudekffehkeffudduvedvfeduleelfeeg
 ieeljeehjeeuvdeghfetvedvnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucevlh
 hushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:Bs4yZqBLhPn0s0kH3DDdkD0LhW7U9VHdrcG9Y54R4AsKQLO1k8xytg>
 <xmx:Bs4yZni3Cc1erQbDWL2xgUxdnkm_4V0xAmlv22bP1KhhpJUSDqoQ6g>
 <xmx:Bs4yZmqKf7uSx2_MfxSilQVE_d4GtThPJjKXXLt00SZVYdHP-mPWjw>
 <xmx:Bs4yZqi8_mMMxL-AffjltSMYssZjEvGhCbK7cxX6NpBoWfxmvVq_wg>
 <xmx:Bs4yZksTYx_eDfEVfaQ_VLIuW8wInPg7bPWNQ18YPbp18VlzDcERlPMq>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 1 May 2024 19:19:32 -0400 (EDT)
Date: Thu, 2 May 2024 08:19:31 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Adam Goldman <adamg@pobox.com>
Subject: Re: [PATCH] firewire: ohci: mask bus reset interrupts between ISR
 and bottom half
Message-ID: <20240501231931.GB106963@workstation.local>
Mail-Followup-To: Adam Goldman <adamg@pobox.com>,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
References: <ZfqpJ061hLtPT8XL@iguana.24-8.net>
 <20240325005828.GB21329@workstation.local>
 <20240401121800.GA220025@workstation.local>
 <ZjIp68AqHhegFmDv@iguana.24-8.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZjIp68AqHhegFmDv@iguana.24-8.net>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Adam, On Wed, May 01, 2024 at 04:39:23AM -0700,
 Adam Goldman
 wrote: > Hi Takashi, > > On Mon, Apr 01, 2024 at 09:18:00PM +0900, Takashi
 Sakamoto wrote: > > I sent an additional patch[1] to handle the bus-re [...]
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [64.147.123.144 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1s2JEi-0004Je-4V
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
Cc: linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi Adam,

On Wed, May 01, 2024 at 04:39:23AM -0700, Adam Goldman wrote:
> Hi Takashi,
> 
> On Mon, Apr 01, 2024 at 09:18:00PM +0900, Takashi Sakamoto wrote:
> > I sent an additional patch[1] to handle the bus-reset event at the first
> > time. I'd like you to review and test it as well, especially under your
> > environment in which 1394:1995 and 1394a phys exist.
> > 
> > [1] https://lore.kernel.org/lkml/20240401121200.220013-1-o-takashi@sakamocchi.jp/
> 
> I'm sorry for another very late reply.
> 
> Now that we eliminated the IRQ storm, it makes sense to always enable 
> the bus-reset interrupt at startup. I tested your patch with various 
> devices, with a FW800 repeater, with a FW400 hub, without a hub, etc. 
> Everything works OK. However, I only tested with XIO2213B OHCI.
> 
> -- Adam

Thanks for your test. The content of patch is equivalent to the first
one in the candidate series[1], so I appended Tested-by tag when
applying to for-next branch.

The for-next branch includes the commits to provide the following
tracepoints events:

* firewire:async_request_outbound_initiate
* firewire:async_request_outbound_complete
* firewire:async_response_inbound
* firewire:async_request_inbound
* firewire:async_response_outbound_initiate
* firewire:async_response_outbound_complete
* firewire:async_phy_outbound_initiate
* firewire:async_phy_outbound_complete
* firewire:async_phy_inbound
* firewire:bus_reset_initiate
* firewire:bus_reset_schedule
* firewire:bus_reset_postpone
* firewire:bus_reset_handle

All of them are used to trace the action of firewire core function,
instead of 1394 OHCI driver. I think they are helpful to debug the kind
of issue which we handled for v6.8 kernel.

[1] https://lore.kernel.org/lkml/20240501073238.72769-1-o-takashi@sakamocchi.jp/


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
