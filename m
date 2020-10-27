Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9231229A07E
	for <lists+linux1394-devel@lfdr.de>; Tue, 27 Oct 2020 01:31:31 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1kXCtW-0005FG-6J; Tue, 27 Oct 2020 00:31:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1kXCtU-0005Ex-BQ
 for linux1394-devel@lists.sourceforge.net; Tue, 27 Oct 2020 00:31:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ydzpjo4+CjMidbb3ZaFBGf7udcVDCw4IXMh46gqxR0E=; b=E2TY32xAQWhF4bkWEpYPDs3q0z
 qugFlHBHzlzJ8QCQRPMp2bEJchpD54misorTEW4GQbUokHI1ulJ2Ugjfv8fND3cArd+joRH0nd7qg
 tXqxUeGJZtLITn+0SN6eCsmkHQJCUtHRDgzA1xGALQBASmoCy2hSXoN16RmAnDvwPBQM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ydzpjo4+CjMidbb3ZaFBGf7udcVDCw4IXMh46gqxR0E=; b=Pu9t8VjAPrvsot9wX+BC2iJw1Z
 QuyETFqfyos/wZCPQA/10rIFXzvjgNx8s7QqQVIKTUt/MMy0+AziVzdxXRaGEKz55Ax8Hvgq0iink
 R/xR2zfKT9TdjkpF+mRZkVBhxncxoB329l4bKW/NyQhUF201g89+VZoG8WoIDPFI/O04=;
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kXCtK-008EBr-1Z
 for linux1394-devel@lists.sourceforge.net; Tue, 27 Oct 2020 00:31:20 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id F118AD19;
 Mon, 26 Oct 2020 20:13:21 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Mon, 26 Oct 2020 20:13:22 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-type:content-transfer-encoding:in-reply-to; s=fm2; bh=Y
 dzpjo4+CjMidbb3ZaFBGf7udcVDCw4IXMh46gqxR0E=; b=FbMHnddjGE9NxsVMV
 D6j+5cjsIREXDwCMjL8VYg22hgNlezpkWkaUoeaWEK6XZxRIJc6vQRqGrfBDVIkv
 IzN8WuAzalljvB9CHvmbLc49S3GYwFMkePK0yA+uHbzSe1TnySOidI034cJ3mccm
 azgi6t4hfju2tA8MoCGCzkQOfuYZq8F+2owQ/0N15vyBwb4asUV2ZChXWnLwIFI9
 /oVLoWYQ+aYkkkgAw0RhHsygFZYdC6aF2aKrWlXeBuCsVvSqTgcP1/MVZaoct98u
 rVUl2skJ5SLMBdMdACcXFWcQFHyrolg6BGGCpdntR/lZNULQCkwLnBJ/FmCfno2K
 5WPaw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:from:in-reply-to:message-id:mime-version:references
 :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm1; bh=Ydzpjo4+CjMidbb3ZaFBGf7udcVDCw4IXMh46gqxR
 0E=; b=gnePpegTnRvg/vl+tOST0PmNckjjwMVtcCcz89ewjDLqZc9Xd9hZDNPil
 rtatCMW/wk/erN/wDVabxs9UkuEF5zyheEN8mKiKRidigp9wKqBvt2adbIOAAi5K
 5G/X4oE1iUPGiEpz/2AnTvpvy7NMC00ogUFznc+PqzMHH3aWECpoSQ0TZV4LKgeB
 mHGGB1B+ShOfwjQcHZoWAjr1kHSGq21VHyxHAvSDJdE1zN+shTwmpeakzyKpfoEW
 6W00Ov3ujbhDMt8XkD9v7HFXp4FQOM7Mg7ab6bAbyp+fj3OSvZ550CVVIbT4taW1
 O28x9ppVo19yMRxd3trwHtKFNONBQ==
X-ME-Sender: <xms:IGaXX6XA0QwMN6QIhFqjPY7odFX6DF0XF5WGyfKn1R9Sb-OqsPtydw>
 <xme:IGaXX2lgdd43B-0K9TYQTElm0ptBkA9bIWtbtGGAdBl-dq_zE4BZhKnlnfhrf0JNP
 h_Ta_7B1tytbP3SkmM>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrkeekgddujecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggugfgjsehtkeertddttdejnecuhfhrohhmpefvrghkrghs
 hhhiucfurghkrghmohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjh
 hpqeenucggtffrrghtthgvrhhnpeeggeegjeejleehvdfhteevffeuheeiiefftedvteet
 tdeuieefgeehveekteeufeenucffohhmrghinhepshhouhhrtggvfhhorhhgvgdrnhgvth
 enucfkphepudegrdefrdeigedrvddtjeenucevlhhushhtvghrufhiiigvpedtnecurfgr
 rhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjh
 hp
X-ME-Proxy: <xmx:IGaXX-a6xBJJrFeWEdUKmJam_eBkUfBl6BeCHEKvT4zSaiDxlBrbEw>
 <xmx:IGaXXxWkmcJG8uRAENx7eRJseWQ76mCDIkcI0-DM6-ayzO5CoMVX8A>
 <xmx:IGaXX0l_dZoagJXHs963sSE_Nqld1p_lRBXLdgA2HCodGzgHy5rUbw>
 <xmx:IWaXX1AV1XnJFFES3lT3AbCkEbuu26wOx8NnLN_a4S6XgMeDyHSmAw>
Received: from workstation (ae064207.dynamic.ppp.asahi-net.or.jp [14.3.64.207])
 by mail.messagingengine.com (Postfix) with ESMTPA id BDE41328005A;
 Mon, 26 Oct 2020 20:13:18 -0400 (EDT)
Date: Tue, 27 Oct 2020 09:13:16 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Arnd Bergmann <arnd@kernel.org>
Subject: Re: [PATCH] firewire: fix function type cast warning
Message-ID: <20201027001316.GA27589@workstation>
Mail-Followup-To: Arnd Bergmann <arnd@kernel.org>,
 Stefan Richter <stefanr@s5r6.in-berlin.de>,
 linux1394-devel@lists.sourceforge.net,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, linux-kernel@vger.kernel.org,
 oscar.carter@gmail.com
References: <20201026215138.3893732-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201026215138.3893732-1-arnd@kernel.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: arndb.de]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [64.147.123.21 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kXCtK-008EBr-1Z
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>, linux-kernel@vger.kernel.org,
 oscar.carter@gmail.com, linux1394-devel@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

SGkgQXJuZCwKCk9uIE1vbiwgT2N0IDI2LCAyMDIwIGF0IDEwOjUxOjI3UE0gKzAxMDAsIEFybmQg
QmVyZ21hbm4gd3JvdGU6Cj4gRnJvbTogQXJuZCBCZXJnbWFubiA8YXJuZEBhcm5kYi5kZT4KPiAK
PiBnY2MgLVdleHRyYSBjb21wbGFpbnMgYWJvdXQgYSBzdXNwaWNpb3VzIGNhc3Q6Cj4gCj4gcml2
ZXJzL2ZpcmV3aXJlL2NvcmUtY2Rldi5jOjk4NTo4OiB3YXJuaW5nOiBjYXN0IGJldHdlZW4gaW5j
b21wYXRpYmxlIGZ1bmN0aW9uIHR5cGVzIGZyb20g4oCYdm9pZCAoKikoc3RydWN0IGZ3X2lzb19j
b250ZXh0ICosIGRtYV9hZGRyX3QsICB2b2lkICop4oCZIHtha2Eg4oCYdm9pZCAoKikoc3RydWN0
IGZ3X2lzb19jb250ZXh0ICosIGxvbmcgbG9uZyB1bnNpZ25lZCBpbnQsICB2b2lkICop4oCZfSB0
byDigJh2b2lkICgqKShzdHJ1Y3QgZndfaXNvX2NvbnRleHQgKiwgdTMyLCAgc2l6ZV90LCAgdm9p
ZCAqLCB2b2lkICop4oCZIHtha2Eg4oCYdm9pZCAoKikoc3RydWN0IGZ3X2lzb19jb250ZXh0ICos
IHVuc2lnbmVkIGludCwgIGxvbmcgdW5zaWduZWQgaW50LCAgdm9pZCAqLCB2b2lkICop4oCZfSBb
LVdjYXN0LWZ1bmN0aW9uLXR5cGVdCj4gCj4gVGhlIGJlaGF2aW9yIGlzIGNvcnJlY3QgaW4gdGhl
IGVuZCwgYnV0IHRoaXMgaXMgbW9yZSBjbGVhcmx5Cj4gZXhwcmVzc2VkIHVzaW5nIGEgdHJhbnNw
YXJlbnQgdW5pb24uCj4gCj4gRml4ZXM6IDg3MmUzMzBlMzg4MCAoImZpcmV3aXJlOiBhZGQgaXNv
Y2hyb25vdXMgbXVsdGljaGFubmVsIHJlY2VwdGlvbiIpCj4gU2lnbmVkLW9mZi1ieTogQXJuZCBC
ZXJnbWFubiA8YXJuZEBhcm5kYi5kZT4KPiAtLS0KPiAgZHJpdmVycy9maXJld2lyZS9jb3JlLWNk
ZXYuYyB8ICA2ICsrKy0tLQo+ICBkcml2ZXJzL2ZpcmV3aXJlL2NvcmUtaXNvLmMgIHwgIDIgKy0K
PiAgaW5jbHVkZS9saW51eC9maXJld2lyZS5oICAgICB8IDE3ICsrKysrKysrLS0tLS0tLS0tCj4g
IDMgZmlsZXMgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgMTMgZGVsZXRpb25zKC0pCgpPc2Nh
ciBDYXJ0ZXIgaGFzIHBvc3RlZCBhIHBhdGNoIHRvIGZpeCBpdC4KaHR0cHM6Ly9zb3VyY2Vmb3Jn
ZS5uZXQvcC9saW51eDEzOTQvbWFpbG1hbi9tZXNzYWdlLzM3MDI0OTY2LwoKSSBkb24ndCBrbm93
IGV4YWN0bHkgYnV0IG1haW50YWluZXJzIHNlZW1zIHRvIG92ZXJsb29rIGl0Li4uCgoKVGhhbmtz
CgpUYWthc2hpIFNha2Ftb3RvCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbWFpbGluZyBsaXN0IGxpbnV4MTM5NC1kZXZlbEBsaXN0cy5zb3VyY2Vmb3Jn
ZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vbGludXgx
Mzk0LWRldmVsCg==
