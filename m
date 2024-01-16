Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A7AB182FDA1
	for <lists+linux1394-devel@lfdr.de>; Wed, 17 Jan 2024 00:04:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rPsTf-0000C4-6j;
	Tue, 16 Jan 2024 23:04:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rPsTc-0000Bi-LS
 for linux1394-devel@lists.sourceforge.net;
 Tue, 16 Jan 2024 23:04:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HM6XYyzMGplnAW8KP/HwyNqn9nWPj7xb6rZZDrC+klM=; b=QD/a0maj0GekkKiTa1WLs8nW+y
 neICvuYkpfFbCljbSmFKoHEdg98bz9bZAWxmHvYvVwJoy4euwepxDnoLpAucFE0/C5QxABsVwxz6L
 e+kY52jyynY5eoQ+l44Ew4wErWIkDH2dE0CMdIuyrURWmPVBWoQbivWfaGMuklG6lMc8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HM6XYyzMGplnAW8KP/HwyNqn9nWPj7xb6rZZDrC+klM=; b=bEKv8AnZR5ptwK5RHS1AqGlQAw
 HcQjFIoxAtDUPf7jU0beIjBScQupdcg1rjfu5wJiacbigXRqxm33p2MWMauuRKwP08a7b3LL2WNfq
 NWFSBfXXYG/IlNmsI+iSQHrdWhg7N2QdMXXtnvMKIWn/XtrALGYfD9rw8h1LoyqcT4O4=;
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rPsTa-0004Db-Cv for linux1394-devel@lists.sourceforge.net;
 Tue, 16 Jan 2024 23:04:12 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.nyi.internal (Postfix) with ESMTP id 4F7BD5C0136;
 Tue, 16 Jan 2024 18:03:58 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Tue, 16 Jan 2024 18:03:58 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1705446238; x=
 1705532638; bh=HM6XYyzMGplnAW8KP/HwyNqn9nWPj7xb6rZZDrC+klM=; b=A
 egZmQhSP25h8tLF5tFrvWGdRVy+1QOn2FVDYMlreiaOQ97OKMRIUyfnzSiQ1IVR7
 UCzxB/MYKmuYRjXNsvOneIXDVIm1GUKpinRoxu57nmZixvj6WnhfOhexUM/9jSXJ
 hDXAM+OKGUQTMExQqTnApczk+qdAdeWiWxTYqot/jiK1FG+rA8yVeE96cBrYbI6Y
 DSjCJGO/WEtRKsIkgFjtcCX1SjAyBK0G4VxoHbbsILnNQDInQ2J9NDjL+8Z9bADb
 GRF8jvZhBWwEVkP1yzujsYQ0rCDemZV2UYSl0sLY1BiEViH2V8NEiyz6FVz0q56W
 98MsLtgNPyTh6p5zANC2w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1705446238; x=1705532638; bh=HM6XYyzMGplnAW8KP/HwyNqn9nWP
 j7xb6rZZDrC+klM=; b=IxYAtIf3puwDu4v/o3V4l0omamweSC+QrVQW2NXhiQ0N
 SaAn6dTOCXgf3rl/Gt4l6zuZx0SytaF5mDinUwfTHikT5YfGCCLmEUGUuZoO8Or/
 wRHy0FdtYRj6PYmlUYItU9GOYAG+jYM7hCF8v6575tk1DC6I608mvTqNlkvExqJd
 RVlM9kbY2OH8zWC1FSS1tgVxytOkw1mL8ZT8uw4B3VanYfYHiXfVjJYMA1ZFwEkA
 TEGz4rDrd+tZHCcLBB+W9BttQGA9iTgdLDQs+9fR6ZI3CwLfMRRzN4K6Rzc54Q6y
 EPWtgGzOmiOh4xFUHy11nMxD1pf5MoFMWVSqwo/XwQ==
X-ME-Sender: <xms:XQunZVKLu9q6AP4R1yFe4yKu0Y-wXD4ivlljUXriG9P1XIOsI4sYXg>
 <xme:XQunZRIalHQV0e2jQ-9UNpM0svrYAcefTmK1JJPZW1h0S4EoAZOy2SBheFuscoCzh
 -3vfHhR0-GkEpiHIQI>
X-ME-Received: <xmr:XQunZdudc04iEmWpyH_rNO9YKo60b06v3K2YjDWOjLx7XrQYDo1w_MTRfJqxJJw16kl9tt5n2XG8iPcPmvKu_wqslLzul9Jndv4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvdejgedgtdeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfhfgggtuggjsehttd
 ertddttddvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedugeejje
 dukeegheeljeejfeduhfdtfeeitdfgffeftdekkeeuteeikedvvdeigfenucffohhmrghi
 nheprghmrgiiohhnrdguvgenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmh
 grihhlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:XQunZWZk1Pu5bE0RqrmFYM5PvMf9PVm2uwZv_Cc9lOiDUgij71Rvbg>
 <xmx:XQunZcYn7kmLpUtYJAUtuNhcUG5Isv51PY97aSNjSeE3UPHO6xc3Dg>
 <xmx:XQunZaBvkVHYtDIoLHj37T-HjLTAht1hsJpI08TkSmyk5UQUb42BpQ>
 <xmx:XgunZVB75uluBBFeJEkc0rPeaSUw6giy0AsylUtLhwJ6s7RI8uFKDA>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 16 Jan 2024 18:03:56 -0500 (EST)
Date: Wed, 17 Jan 2024 08:03:52 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Tobias Gruetzmacher <tobias-lists@23.gs>
Subject: Re: Hard crash when loading firewire-ohci
Message-ID: <20240116230352.GA98566@workstation.local>
Mail-Followup-To: Tobias Gruetzmacher <tobias-lists@23.gs>,
 linux1394-devel@lists.sourceforge.net
References: <20231212001340.t3eo27hjbwj742q3@23.gs>
 <20240116015235.GB89379@workstation.local>
 <kfm24ewu33o2ct4fzfakovv73qaqfwrgrmpsit6z3cvzq3e5u3@r5uvb2pwqurt>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <kfm24ewu33o2ct4fzfakovv73qaqfwrgrmpsit6z3cvzq3e5u3@r5uvb2pwqurt>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Tue, Jan 16, 2024 at 10:38:38PM +0100,
 Tobias Gruetzmacher
 wrote: > The unfortunate truth is that the Asmedia bridge and the 1394 live
 on > the same PCIe card (Amazon said it was this one: > https: [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [66.111.4.27 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1rPsTa-0004Db-Cv
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
Cc: linux1394-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

On Tue, Jan 16, 2024 at 10:38:38PM +0100, Tobias Gruetzmacher wrote:
> The unfortunate truth is that the Asmedia bridge and the 1394 live on
> the same PCIe card (Amazon said it was this one:
> https://www.amazon.de/gp/product/B07S9G4XGB) and I was under the
> impression that is the only way to get Firewire ports on modern hardware
> (which only has PCIe slots) - Or do "native" PCIe Firewire cards exist?

In the market, You can find such cards with:

* Texas Instruments XIO2221 (integrating PCIe-PCI bridge)
* Texas Instruments XIO2213 (integrating PCIe-PCI bridge)
* Texas Instruments XIO2200 (integrating PCIe-PCI bridge)
* LSI FW643
* VIA VT6315


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
