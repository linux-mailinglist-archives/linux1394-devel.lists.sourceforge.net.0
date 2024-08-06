Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5810494867E
	for <lists+linux1394-devel@lfdr.de>; Tue,  6 Aug 2024 02:06:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sb7iu-0002E5-HH;
	Tue, 06 Aug 2024 00:06:44 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sb7it-0002Dv-8a
 for linux1394-devel@lists.sourceforge.net;
 Tue, 06 Aug 2024 00:06:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yYBuxa02hn1I8nuNlxVPTW633WCaq8XlhKZ8OVqohWo=; b=IFUg4S1tVrdD2Ri53v6VbTt2k+
 xFzWUBn/TVFA75gy7CJcHW5v8SKdUmjT4CjEQUXjl33WfvDF17ychPXdmdyrE7wxY8qEwmZ6wC8/Y
 hitvm7gEb9g0FvtEeHqyc2ZXE2fLbtCcei9RSSeLyw2r3MLTetsfo9gm1O8B0qnPvNAU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yYBuxa02hn1I8nuNlxVPTW633WCaq8XlhKZ8OVqohWo=; b=mWSxT1KWsHQWF0QyxZ87Q5UA6A
 vdIfgt77LfWbkHeBUZ5xNVAV/wR9qz253jjdQUAQ/4IrcVwcd5ADf11fo0lCJPzPZrfiMEwgYHwDx
 sz7sMNszJSwF5qbzqw5zvkGueVV+80gQYlDN8uUE0Z9Pq5i0i5LomOZ+yvFAsa1FaLT4=;
Received: from fhigh6-smtp.messagingengine.com ([103.168.172.157])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sb7ir-0007Ag-VT for linux1394-devel@lists.sourceforge.net;
 Tue, 06 Aug 2024 00:06:43 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id 66707114FD18;
 Mon,  5 Aug 2024 20:06:31 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Mon, 05 Aug 2024 20:06:31 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1722902791; x=
 1722989191; bh=yYBuxa02hn1I8nuNlxVPTW633WCaq8XlhKZ8OVqohWo=; b=k
 yLDjodZ86PN38ubAdxKabIZn7ijBLrGc3tc9Qp+4o91p/cZEZJNaJALBH4+BS5wP
 LQOqr3LYpaHUb00JmuzzBlDwYpHkZsKD1bp0K8MxltxTXSGd4TZc1XVrL8E4iZa5
 UvIp8IBB3wsGVZIoolNY31dCf6vzfOc59NynrGCnmsVotCoeAe5IHxB2oKI786ts
 Fwv9Mzz6I3zbNKajrOjD0jMykpFFrdZrDlmhgS8SCdkkLSPRFzWz2rcalHIiU4CT
 hPgPmJEW0v3mSxY0RX9bOJuKfT21ZAtnPJLeCUvxY2Sk1xOW81jJ17RHQRWuURl+
 YJm4JKhRt+jyIxfP9c13w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1722902791; x=1722989191; bh=yYBuxa02hn1I8nuNlxVPTW633WCa
 q8XlhKZ8OVqohWo=; b=a94riqfhtJcsnDys0mbsSATOdkT3rhd9Cn9ncl2K/Kc2
 C6xL01b/bpXVZ2jo+ySy4pRKJUKD8A9fvn2I9wwezhg5g7sqRhBU6oiJ2HL9cPlZ
 6fDgkiSO5HAC9/Lobb+76i5RfTCJ5csyyVALY6b/EBEuxq/V7NhwtUlRDtr2/YLe
 aRbtCb4U6LJiHjaePGJC8DA8xVjt9rd3ErTfGkg5y/uraSwkFnav+nxAHE8P6RrV
 jFvW50xugbmEh1fse/O9h71hzgQ3Jo34TcwqnCYOHTzRaMLdha1OTi0w150RQYuK
 0dftwQoqlA457GoOH/Qgp8ojy/jUTn8XQcVkeCyOwQ==
X-ME-Sender: <xms:B2mxZoSckoEgdG07mikoIUfJI8_SstpZsqtGHpGV8KZaaP0-_-X8Ag>
 <xme:B2mxZlxYse3ecK8SWbULFFTbrICQhLtbAEdFXM_loLKWXp7To0o4E7pvmc0SopiOL
 su7iu8Q_dAkVueiRuQ>
X-ME-Received: <xmr:B2mxZl2fFb6eGtXJhwk42gOQ_wsniSEPCNwkqH0vUXdT-r1mY1pYiF9BjEvnzzzBt1aiclzOB8fJbLl9n1GDMj680OeVgDiT>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrkeejgdefvdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvfevuffkfhggtggujgesthdtre
 dttddtvdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepveeilefhud
 ekffehkeffudduvedvfeduleelfeegieeljeehjeeuvdeghfetvedvnecuffhomhgrihhn
 pehkvghrnhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmh
 grihhlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggp
 rhgtphhtthhopedt
X-ME-Proxy: <xmx:B2mxZsDUATEFIDdxjJa5p0PvEpHbpTKqntKWnYMVHGd3uVfMntofxw>
 <xmx:B2mxZhjaL2CEn9giEwYhE8JTRgiC3lVVMtTV4FLO70vbdumDlid5Hg>
 <xmx:B2mxZooIWFFPT8fl7-EJQ_KHmeNmGK-7YanqevZF_Mmjgls5J6CZBQ>
 <xmx:B2mxZkgw_bd8-wiAWKrAH3v4MAp01gRTfom3EkphBSW2G5qc7IvpHg>
 <xmx:B2mxZksS40gAMhcXw9UlwEVb619wk6KyMIsx08e6av8d1sH4cgdMNM_U>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 5 Aug 2024 20:06:30 -0400 (EDT)
Date: Tue, 6 Aug 2024 09:06:26 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH v2 00/17] firewire: core/ohci: use guard macro for any
 type of lock primitives
Message-ID: <20240806000626.GA264514@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20240805085408.251763-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240805085408.251763-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Aug 05, 2024 at 05:53:51PM +0900, Takashi Sakamoto
 wrote: > Hi, > > This patchset is a revised version of the previous one.
 > > https://lore.kernel.org/lkml/20240804130225.243496-1-o-takashi@s [...]
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [103.168.172.157 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [103.168.172.157 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1sb7ir-0007Ag-VT
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

On Mon, Aug 05, 2024 at 05:53:51PM +0900, Takashi Sakamoto wrote:
> Hi,
> 
> This patchset is a revised version of the previous one.
> 
> https://lore.kernel.org/lkml/20240804130225.243496-1-o-takashi@sakamocchi.jp/
> 
> The guard macro was firstly introduced in v6.5 kernel, and already
> available for spin_lock, mutex, RCU, and R/W semaphore. It is useful to
> ensure releasing lock in block.
> 
> This patchset includes changes to replace lock/release codes with the guard
> macro.
> 
> * Changes in v2:
>   * use scoped_guard() instead of guard() just after label so that
>     statements are expanded there instead of declarations.
> 
> Takashi Sakamoto (17):
>   firewire: core: use guard macro to maintain static packet data for phy
>     configuration
>   firewire: core: use guard macro to maintain the list of card
>   firewire: core: use guard macro to maintain the list of cdev clients
>   firewire: ohci: use guard macro to serialize accesses to phy registers
>   firewire: core: use guard macro to maintain RCU scope for transaction
>     address handler
>   firewire: core: use guard macro to access to IDR for fw_device
>   firewire: core: use guard macro to maintain the list of address
>     handler for transaction
>   firewire: core: use guard macro to disable local IRQ
>   firewire: core: use guard macro to maintain list of events for
>     userspace clients
>   firewire: core: use guard macro to maintain IDR of isochronous
>     resources for userspace clients
>   firewire: core: use guard macro to maintain isochronous context for
>     userspace client
>   firewire: core: use guard macro to maintain list of receivers for phy
>     configuration packets
>   firewire: core: use guard macro to maintain list of asynchronous
>     transaction
>   firewire: core: use guard macro to maintain properties of fw_card
>   firewire: ohci: use guard macro to maintain bus time
>   firewire: ohci: use guard macro to maintain image of configuration ROM
>   firewire: ohci: use guard macro to serialize operations for
>     isochronous contexts
> 
>  drivers/firewire/core-card.c        |  60 ++---
>  drivers/firewire/core-cdev.c        | 252 ++++++++----------
>  drivers/firewire/core-device.c      |  83 +++---
>  drivers/firewire/core-iso.c         |   5 +-
>  drivers/firewire/core-topology.c    |   5 +-
>  drivers/firewire/core-transaction.c | 146 ++++------
>  drivers/firewire/ohci.c             | 399 ++++++++++++----------------
>  7 files changed, 403 insertions(+), 547 deletions(-)

Applied to for-next branch.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
