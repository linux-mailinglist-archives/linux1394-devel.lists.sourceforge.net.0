Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 829AF97568B
	for <lists+linux1394-devel@lfdr.de>; Wed, 11 Sep 2024 17:13:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1soP1p-0006Z7-St;
	Wed, 11 Sep 2024 15:13:10 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1soP1p-0006Yz-0d
 for linux1394-devel@lists.sourceforge.net;
 Wed, 11 Sep 2024 15:13:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hX37uCQOGVhHQTqeJ5W0AwuwfpJ/xp+m2JV1xJw815k=; b=XI7flf4JiN+TA/rhRwiQ7fK7cn
 atWDP3vTDmoCg0iUkrFMre51LHQgQNMcx1eZMEb0UCbfHPWXECuGp/FAx9Z2G4M6wKUEM/mQkNfTZ
 matul/a0hlZDGPw11+MCC6jXNuzXw/jX+xdyUdfE4TnmbfLOZRjsqOeByRkMjaAF457w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hX37uCQOGVhHQTqeJ5W0AwuwfpJ/xp+m2JV1xJw815k=; b=hFPou/uG6O/7g8xAOvUEeInEhj
 /uRtrwCZOAJyZ8WFxu30bkdANaybXL4leO9KU41I/nXaM+IiK7V+XazP5ewsCZoW+UTNB5d0zE3Xy
 EOZzd/m6JBFSlVpiRxx+SzYm5XZGglKdhjklopKPKs99A8uqkAFNbbC3rZDaI5bxKew4=;
Received: from fout6-smtp.messagingengine.com ([103.168.172.149])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1soP1o-0001YT-BP for linux1394-devel@lists.sourceforge.net;
 Wed, 11 Sep 2024 15:13:09 +0000
Received: from phl-compute-09.internal (phl-compute-09.phl.internal
 [10.202.2.49])
 by mailfout.phl.internal (Postfix) with ESMTP id B7C7513801A0;
 Wed, 11 Sep 2024 11:12:57 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-09.internal (MEProxy); Wed, 11 Sep 2024 11:12:57 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1726067577; x=
 1726153977; bh=hX37uCQOGVhHQTqeJ5W0AwuwfpJ/xp+m2JV1xJw815k=; b=r
 oEqgBCFzNOLtDfQGW/GXoy+5xnao/YniwORdsTn+73sly+TADa7x9z2WIRIGgJtd
 CI6Q9jjctdZX5Ggma7DBgg2Ge29yzRKFlUlo0mn/JdLabLGc2Nzi7n+84wRUCiyX
 FCYMRHZ+tDLhYHvxec4+86gZpoz5fzFi4LKiYy3ZIpJya4X9ENPXa6qZun2BMqKe
 Fk+hdazoSMsjgYR8ffQkvBwUiKLScClOS+DXc7nln9fbZ2/tT43i3pw5mRhcMai9
 C2heJUwX8O/yuHFV2kyPuejMmttrw5K4tFuRvr12uhnSxxk0N9bD2u5mJnJeTFbQ
 MqrW9Tv6xSlWAtlsgQKzw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; t=1726067577; x=1726153977; bh=hX37uCQOGVhHQTqeJ5W0AwuwfpJ/
 xp+m2JV1xJw815k=; b=dXwlQbnHnqW82aserxKQOHu6CC/l6KILIh3WzGYHszp+
 KQjQDPIAFdx/Nr1aIB//MG/2TZbk+UfXWcUFhrhv3SRHEMiOKE0tLf5s2TuVF+iz
 cQ6YCNgOQT8iLAGSO0ll1lLylyQv8+wb5gSLK2jSx9EckabSYQp7KWo1hl7g+KKc
 P50/Kr+3bWVvxApyXfgwA6qED1IIre0Un3ZJ06diqDeOvyuSQjXqStKsVwAfzMNm
 QiqTW/4OYReg87v948Sq9Zm8Zgluarbb1zdGCySeo3/dgaOOAMUsppaVkePZhmVG
 h/7qHEsCZB7/ihR6E7+BuZuqnoWdRCxyKq0ttQHpbA==
X-ME-Sender: <xms:ebPhZrK2lC9H9VJhvFrKok2GHgjXqbgJclaEn7JCEz7KAfgghXuKWA>
 <xme:ebPhZvLRg-4yuUZBpHcqlYZLl3cT98t9_jRa9F6A6a5xIRiy9Qg2KTFWv2FCEhKJo
 5xouG40l11Biir4aWU>
X-ME-Received: <xmr:ebPhZjsoOFtadSgQGFiwsXMrt434uNpqI2PU6FPqGubqr0ewwU0g28TZLqeHpX1M60L-ob2r4oLJ_Pj8meOKZIZjXwhiRXNzLw4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudejuddgkeehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvve
 fukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghm
 ohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrg
 htthgvrhhnpeehhffhteetgfekvdeiueffveevueeftdelhfejieeitedvleeftdfgfeeu
 udekueenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
 hoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopeef
 pdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvg
 hlsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhu
 gidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplhhinh
 hugidqshhouhhnugesvhhgvghrrdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:ebPhZkaPVdAwyqP_NGvtUOhaWP5j5XBEDu6Rt36wpI9sKJKhX8HoFw>
 <xmx:ebPhZiap8pd-OdKolsh_yqj5O-8r3pg8V7jWFCy6NiJ2NdIhGnfEwQ>
 <xmx:ebPhZoDFOBpO_e2kF6Vpq0h_jwdm0RAMrfxpPzDeePowo6n8U5FkTA>
 <xmx:ebPhZgapOrD1isfzS5cqga3v_srS7VeLA50ZyeHJAAOSU7SA5HKqvg>
 <xmx:ebPhZiFbJJWduIfSYCnxs1eNc67pRdOwnZcTgIUGetXhNA4v_UZYMqaK>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 11 Sep 2024 11:12:56 -0400 (EDT)
Date: Thu, 12 Sep 2024 00:12:53 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH 0/2] firewire: core: optimize for concurrent calls of
 fw_iso_context_flush_completions()
Message-ID: <20240911151253.GA167609@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org
References: <20240909140018.65289-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240909140018.65289-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Mon, Sep 09, 2024 at 11:00:16PM +0900,
 Takashi Sakamoto
 wrote: > Hi, > > It seems to be the last week for v6.12 development. I realize
 it > unpreferable to propose intrusive changes, however I also [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.149 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1soP1o-0001YT-BP
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
Cc: linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

On Mon, Sep 09, 2024 at 11:00:16PM +0900, Takashi Sakamoto wrote:
> Hi,
> 
> It seems to be the last week for v6.12 development. I realize it
> unpreferable to propose intrusive changes, however I also realized that
> there is a room to refactor core functions in respect to handler of work
> item for isochronous context for the next merge window...
> 
> This series of changes refactors the core function to call
> fw_iso_context_flush_completions() from the work item. It optimizes some
> event waiting and mediation of concurrent calls as well.
> 
> Takashi Sakamoto (2):
>   firewire: core: move workqueue handler from 1394 OHCI driver to core
>     function
>   firewire: core: use mutex to coordinate concurrent calls to flush
>     completions
> 
>  drivers/firewire/core-iso.c | 31 ++++++++-------
>  drivers/firewire/core.h     |  5 ---
>  drivers/firewire/ohci.c     | 78 +++++++------------------------------
>  include/linux/firewire.h    |  1 +
>  4 files changed, 31 insertions(+), 84 deletions(-)

I realized that the above changes have unpreferable effects to the behaviour
for user space interface. The changes allow to call the handler of
isochronous context again to drain the rest of packet buffer after calling
the handler at first due to processing the interrupt flag of 1394 OHCI IT/IR
descriptor. As a result, it is possible to enqueue two iso_interrupt events
for user space applications in the bottom half of hardIRQ. However, this is
against the description in UAPI header:

```
$ cat include/uapi/linux/firewire-cdev.h
...
 * struct fw_cdev_event_iso_interrupt - Sent when an iso packet was completed
...
 * This event is sent when the controller has completed an &fw_cdev_iso_packet
 * with the %FW_CDEV_ISO_INTERRUPT bit set, when explicitly requested with
 * %FW_CDEV_IOC_FLUSH_ISO, or when there have been so many completed packets
 * without the interrupt bit set that the kernel's internal buffer for @header
 * is about to overflow.  (In the last case, ABI versions < 5 drop header data
 * up to the next interrupt packet.)
```

As a bottom half of hardIRQ, the work item should enqueue a single event
associated to the interrupt event. The rest of packet buffer should be
handled in the bottom half of next hardIRQ unless in the path of
FW_CDEV_ISO_INTERRUPT.

Let me revert these changes later.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
