Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A0DFC977C56
	for <lists+linux1394-devel@lfdr.de>; Fri, 13 Sep 2024 11:39:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sp2mG-0008EK-Nc;
	Fri, 13 Sep 2024 09:39:45 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sp2mE-0008E2-H7
 for linux1394-devel@lists.sourceforge.net;
 Fri, 13 Sep 2024 09:39:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Hx//Pjz/OP1UcHZsNvfDJfWtoNQ6yEecv9JGrWMIp74=; b=Nk60qDMmPxZkWEDP/xSsP/IHoQ
 hediPTow45xPRWItHvQjwQvEOGhkHgQ4Mi65OCnX8nSodPzjKbvPgd5LuPyLaWeW+9lBtPpGw6J20
 4nDNqhBo9erERIEDK3JVV9UFSaIm+O4J6UFf8y5doFhVJXymxF2W6FDTKf/H/nYA/kac=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Hx//Pjz/OP1UcHZsNvfDJfWtoNQ6yEecv9JGrWMIp74=; b=mRF0nd+SsjoyuZWq2caPk0HX6F
 8uhPE9RayFl7bL78iUlOi+i0tjSgjuddq1+S+7JrVfjqdrSDx8OM6E2QmXsqg0Pr0KoOpcNqJI3cm
 raQTLfqxesOAoLA2BVlYRCtEjZLuvNSWhsk2cyDw4nJsZNAW59eNKqPkatc9wlxRrPrw=;
Received: from fout8-smtp.messagingengine.com ([103.168.172.151])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sp2mD-000557-Pb for linux1394-devel@lists.sourceforge.net;
 Fri, 13 Sep 2024 09:39:43 +0000
Received: from phl-compute-08.internal (phl-compute-08.phl.internal
 [10.202.2.48])
 by mailfout.phl.internal (Postfix) with ESMTP id 26E0E13800D9;
 Fri, 13 Sep 2024 05:39:31 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-08.internal (MEProxy); Fri, 13 Sep 2024 05:39:31 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1726220371; x=
 1726306771; bh=Hx//Pjz/OP1UcHZsNvfDJfWtoNQ6yEecv9JGrWMIp74=; b=B
 118NSrh9XNEy+aU4nxThFkKOGkhtmSUrMAR2/mBPkyHdgOI2PPqfgumn6Iaru8LN
 Kwlwl0+sCOP96hJkvHIpNsvoYYYTAsyfsWRYVoPA39ak1xnGJGB02LOY1URiri8m
 VST8Lsg5dwySEAke7IQsYOQIWRlUIe1ob199u20PbDzOUlPfuFl3ohGeyHm+XQ17
 SCp/gBQKnYgiQHxaoayJ0rRNCGsXWbOFYX5PBeZW5jdrIrYSZzA5yDJ7TvYzLvYb
 mkGJYykFiZrRRxsf2NfA3Zq1utWzFUPKGGraQ6yXD0zqo9kkJ2cn22d8fpYf9wlO
 r30EZNzmY82wgXRq0U7zg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; t=1726220371; x=1726306771; bh=Hx//Pjz/OP1UcHZsNvfDJfWtoNQ6
 yEecv9JGrWMIp74=; b=QrPMrTWPwtiJTAkBEVbHLVGcqel7j1UK8B1wLQABUNIS
 AI5G0kjrD6dcXXf1LlxtU++A34lyopt6fvVgDRcNHDPNI+kFW496CHoaY6G7IQ/y
 XC6yhUfqx6Iixg9r40niHrIxLm4tOhw4NF3gnolJbnVAbpyRfWhMT6PhDuyyvyLs
 ywrmxro9c6paOCOR95euEDriD+X/pbZIviorFowRBU+RhV1ueBcreSrwTwOdpCo9
 LRrTAAWnqcW+hlgEO7/GSzBBuE1szcfNV9Dxi4IUwQNZQXQ0RFdOhIKZBWIPtZBx
 7wePl4YXPqH0eb6YCi6t7PAnh+XrleuFGM2nqTt1CQ==
X-ME-Sender: <xms:UgjkZpZzZtkP3eJaw5aRcn5ndu4V6f80dMc3SWTOijMR0yIJRzjDVQ>
 <xme:UgjkZgYXtoYUrD5X7312vH9nk-2Hk2vKmBhVorScvfHK8HPHJ6g4CGisIAu3n-C5n
 h-0CBPuG0MxIrrZxCQ>
X-ME-Received: <xmr:UgjkZr-JH1nVJXwjhjrtEgQXY8R5Dw4vHqKeLspbgliIN7gMZoSw5ztbbBXTD4gM2Bu8IwVvflIQo15xOCrql_WMElXnryll9Ifc>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudejjedgudeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvve
 fukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghm
 ohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrg
 htthgvrhhnpeevieelhfdukeffheekffduudevvdefudelleefgeeileejheejuedvgefh
 teevvdenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivg
 eptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhho
 tggthhhirdhjphdpnhgspghrtghpthhtohepvddpmhhouggvpehsmhhtphhouhhtpdhrtg
 hpthhtoheplhhinhhugidufeelgedquggvvhgvlheslhhishhtshdrshhouhhrtggvfhho
 rhhgvgdrnhgvthdprhgtphhtthhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghrrdhkvg
 hrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:UwjkZnqsJisb_vF0xvZ1SG60j6pUWtDrOfgJiS78SCrCS66jFmzMZg>
 <xmx:UwjkZkrQKCeiYoQQkgjc0F-Z3R7VsGUlkvqbXbrcDkFKCF-hEcXTAw>
 <xmx:UwjkZtTHoQgfcLMTxK1sBsbk8Dw9U71CZ3iN_oBbvPkkhlUj0OA2cA>
 <xmx:UwjkZsoeeIjOC4Nw_GzCjgVxHNGvPgdjvMeTDDPoQD1V8iZ4bY90nA>
 <xmx:UwjkZr3cHTN1CMPxqey25u78hOWkldrAoPOj6b5Y0B76SXF8GizEB0Pw>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 13 Sep 2024 05:39:29 -0400 (EDT)
Date: Fri, 13 Sep 2024 18:39:28 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH 0/5] firewire: core: revert changes to keep interface
 compatibility
Message-ID: <20240913093928.GB305057@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20240912133038.238786-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240912133038.238786-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Sep 12, 2024 at 10:30:33PM +0900, Takashi Sakamoto
 wrote: > Hi, > > It appears that the changes in my previous series[1] bring
 the behaviour > change of core function in the view of user space [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.151 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [103.168.172.151 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1sp2mD-000557-Pb
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

On Thu, Sep 12, 2024 at 10:30:33PM +0900, Takashi Sakamoto wrote:
> Hi,
> 
> It appears that the changes in my previous series[1] bring the behaviour
> change of core function in the view of user space applications. It is
> not preferable at all without any preparation.
> 
> This series of changes includes two reverts commits as well as some
> minor code refactoring.
> 
> [1] https://lore.kernel.org/lkml/20240911151253.GA167609@workstation.local/
> 
> 
> Takashi Sakamoto (5):
>   Revert "firewire: core: use mutex to coordinate concurrent calls to
>     flush completions"
>   Revert "firewire: core: move workqueue handler from 1394 OHCI driver
>     to core function"
>   firewire: core: add helper function to retire descriptors
>   firewire: core: update documentation of kernel APIs for flushing
>     completions
>   firewire: core: rename cause flag of tracepoints event
> 
>  drivers/firewire/core-iso.c     | 40 +++++++++++----------
>  drivers/firewire/core.h         |  5 +++
>  drivers/firewire/ohci.c         | 61 +++++++++++++++++++++++----------
>  include/linux/firewire.h        |  9 ++---
>  include/trace/events/firewire.h |  4 +--
>  5 files changed, 75 insertions(+), 44 deletions(-)

Applied to for-next branch.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
