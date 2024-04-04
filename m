Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DBE88986C0
	for <lists+linux1394-devel@lfdr.de>; Thu,  4 Apr 2024 14:04:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rsLot-0003Y4-5t;
	Thu, 04 Apr 2024 12:03:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rsLor-0003Xw-Rs
 for linux1394-devel@lists.sourceforge.net;
 Thu, 04 Apr 2024 12:03:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=88x9mxGPrlrm2/bVzjR/yAKPi5qnyN26p02qH751umI=; b=EtXzcIE1yqcuQjNXQzSkapjgAD
 oOauAb1brEGyJ0ilrUp9bDdoIuOFfaePNRVd+GNHM72Pz7jNVnTHxTFE9KLt5HU6DepYhfNj358hC
 A4WFpiQ7/oFhLYkw1ujlM5bFuqo8fK6s91WMIygUl+Vts5BwTAPlMsCyYpF3GxuAvwdc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=88x9mxGPrlrm2/bVzjR/yAKPi5qnyN26p02qH751umI=; b=irRSeyueZXxpyn9PgUfSDHt5Pw
 kJxuNHfCfLRCKnK+t0qQLQUayiKA4Fq2jrnUMDd6AEhd+9LYzW5zFvkwrIhKZ5hqGMgPUXGqVJIoh
 EOot2k/iGCXAvaUdCaq0x7pJW8DFn/TZV5Se/AeLPG804X3Iwy8n8818EdHZHe8f5oiI=;
Received: from wfout7-smtp.messagingengine.com ([64.147.123.150])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rsLon-0003L2-Nr for linux1394-devel@lists.sourceforge.net;
 Thu, 04 Apr 2024 12:03:50 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailfout.west.internal (Postfix) with ESMTP id DC1DD1C00121;
 Thu,  4 Apr 2024 08:03:34 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Thu, 04 Apr 2024 08:03:35 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:content-type
 :date:date:from:from:in-reply-to:in-reply-to:message-id
 :mime-version:references:reply-to:subject:subject:to:to; s=fm2;
 t=1712232214; x=1712318614; bh=88x9mxGPrlrm2/bVzjR/yAKPi5qnyN26
 p02qH751umI=; b=0dsmgDBuPnZAu/TkkrqdMUouB9Gi9muvjgwr6IftDzfPCFJ8
 DRoNQQcAd4nIH7qFXXQpDmhs/6VkwXOYXQV6UNI2QT2cNjno5gInKAUd9qBL8lgR
 95ri9f8CSwCUq1PO9TJ1aMQaqZIqdCDcDNuoqS8DVVsz9rF8oYAKt6g8MdVlgxAh
 Es8yvwfFwQMWs9KBLKLhPz9SySKU3q2E4uRwyAb62F57ghgL+8X3dZlZlRHzf+y9
 B9+GV8LY2714RFMbr94BpedLMMtAtDWpzurklJM8dDGry7NhmqHqRsxHq3O2Ik0q
 5YcZISaot8wEkfYVkVwHQM4+G36p01YYazyTsg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1712232214; x=
 1712318614; bh=88x9mxGPrlrm2/bVzjR/yAKPi5qnyN26p02qH751umI=; b=S
 yMu+MEFEI2BAvzdnyOebMqF5UVND4EH72vzZqaWIVeq2OEH6VRsWhIRv3sItlvJw
 9aQV7cfzG48In81HNoxjYlIbqlfPU1TpKlv8kKhZGEYR+WDtrIQ62Eeb/El4o9Z0
 lUupFO/YygMYh+Dvrj5V5VWHF4smrmLhX4FbVoaicb0/lkLVAeAsYx4WJE9ecLGc
 BDoLEKzajCpvYr0/o63M57bJ3hkM/MNcf1ZQMWdmKWdcr2O1tgnHY8y9IdQMgY/y
 2j1vJg8GPPAoh0FxHOyS9bwyTFhudFub3iKXuQ/CTVpil+D4I9j6fVi0HDiDA8QU
 GfNOCLuaPwlFT/z2PwUSA==
X-ME-Sender: <xms:FpcOZlJh_UeagPKv9qc3QoQVjZyHDt8Km0OfV9O0Xjphh_NfYxYRrA>
 <xme:FpcOZhI44GdJJW0W_R_do5GgvOYiZ5hQOf8Bj9xKFyCqYlC7rv-1nQTCf11WrjM8x
 vnS0dxErhDwZ2EaM2w>
X-ME-Received: <xmr:FpcOZttj0PAn4XWDT488Q5dvR-v7N1eNZSE6uE0asKjGyTgOcTIDF_2IVATRGHClCe42s7VDN8lLg4ASyQMtoG5YbXgG0eepjlY>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudefkedggeejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvfevuffkfhggtggugfgjsehtkeertddttdejnecuhfhrohhmpefvrghk
 rghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhih
 drjhhpqeenucggtffrrghtthgvrhhnpeefheffffduffehhfdvteeuvdfhkeekffdvgfej
 heeujeevhfekudefteelfffgffenucffohhmrghinhepkhgvrhhnvghlrdhorhhgpdhgih
 hthhhusgdrtghomhenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:FpcOZmayOP-a52bsc0igkZ24M3gN9dJ23VUPNuY9i8fdAZxhfouqNw>
 <xmx:FpcOZsZdt8GZ6gIll1kgxu3LKFo0FyiHxM46Y4wdIDd5TwX3eGcZDA>
 <xmx:FpcOZqBtweASGhlLeU5NvpdpvoZoeAVmhyzOf6i6nUgoVxepa3zrHQ>
 <xmx:FpcOZqb-9rzkH60iNdMVhBQhJNiD83imMa8Zs0GpSuc9Vv2mJe2rKg>
 <xmx:FpcOZhO_rcZr6ZqVekcAiq5tapf1WR6JfZyq7upAv8AX4drkG2mrY2WL>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 4 Apr 2024 08:03:32 -0400 (EDT)
Date: Thu, 4 Apr 2024 21:03:30 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Allen Pais <apais@linux.microsoft.com>
Subject: Re: [PATCH] firewire: Convert from tasklet to BH workqueue
Message-ID: <20240404120330.GA303033@workstation.local>
Mail-Followup-To: Allen Pais <apais@linux.microsoft.com>,
 linux-kernel@vger.kernel.org, tj@kernel.org, keescook@chromium.org,
 linux1394-devel@lists.sourceforge.net
References: <20240403144558.13398-1-apais@linux.microsoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240403144558.13398-1-apais@linux.microsoft.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, Thanks for the patch. The replacement of tasklet with
 workqueue is one of my TODO list, and the change would be helpful. On Wed,
 Apr 03, 2024 at 02:45:58PM +0000,
 Allen Pais wrote: > The only generic interface
 to execute asynchronously in the BH context is > tasklet; however, it's marked
 deprecated and has some design f [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.150 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1rsLon-0003L2-Nr
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
Cc: tj@kernel.org, linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, keescook@chromium.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

SGksCgpUaGFua3MgZm9yIHRoZSBwYXRjaC4gVGhlIHJlcGxhY2VtZW50IG9mIHRhc2tsZXQgd2l0
aCB3b3JrcXVldWUgaXMgb25lCm9mIG15IFRPRE8gbGlzdCwgYW5kIHRoZSBjaGFuZ2Ugd291bGQg
YmUgaGVscGZ1bC4KCk9uIFdlZCwgQXByIDAzLCAyMDI0IGF0IDAyOjQ1OjU4UE0gKzAwMDAsIEFs
bGVuIFBhaXMgd3JvdGU6Cj4gVGhlIG9ubHkgZ2VuZXJpYyBpbnRlcmZhY2UgdG8gZXhlY3V0ZSBh
c3luY2hyb25vdXNseSBpbiB0aGUgQkggY29udGV4dCBpcwo+IHRhc2tsZXQ7IGhvd2V2ZXIsIGl0
J3MgbWFya2VkIGRlcHJlY2F0ZWQgYW5kIGhhcyBzb21lIGRlc2lnbiBmbGF3cy4gVG8KPiByZXBs
YWNlIHRhc2tsZXRzLCBCSCB3b3JrcXVldWUgc3VwcG9ydCB3YXMgcmVjZW50bHkgYWRkZWQuIEEg
Qkggd29ya3F1ZXVlCj4gYmVoYXZlcyBzaW1pbGFybHkgdG8gcmVndWxhciB3b3JrcXVldWVzIGV4
Y2VwdCB0aGF0IHRoZSBxdWV1ZWQgd29yayBpdGVtcwo+IGFyZSBleGVjdXRlZCBpbiB0aGUgQkgg
Y29udGV4dC4KPiAKPiBUaGlzIHBhdGNoIGNvbnZlcnRzIGRyaXZlcnMvZmlyZXdpcmUvKiBmcm9t
IHRhc2tsZXQgdG8gQkggd29ya3F1ZXVlLgo+IAo+IEJhc2VkIG9uIHRoZSB3b3JrIGRvbmUgYnkg
VGVqdW4gSGVvIDx0akBrZXJuZWwub3JnPgo+IEJyYW5jaDogaHR0cHM6Ly9naXQua2VybmVsLm9y
Zy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdGovd3EuZ2l0IGRpc2FibGVfd29yay12MQo+IAo+
IENoYW5nZXMgYXJlIHRlc3RlZCBieTogQHJlY2FsbG1lbm90Cj4gKGh0dHBzOi8vZ2l0aHViLmNv
bS9hbGxlbnBhaXMvZm9yLTYuOS1iaC1jb252ZXJzaW9ucy9pc3N1ZXMvMSkKPiAKPiBTaWduZWQt
b2ZmLWJ5OiBBbGxlbiBQYWlzIDxhbGxlbi5sa21sQGdtYWlsLmNvbT4KPiAtLS0KPiAgZHJpdmVy
cy9maXJld2lyZS9vaGNpLmMgfCA1NCArKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0t
LS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMjYgaW5zZXJ0aW9ucygrKSwgMjggZGVsZXRpb25z
KC0pCgpIb3dldmVyLCB0aGUgY2hhbmdlcyBsb29rIHRvIGJlIHRvbyBlYXJseSwgc2luY2Ugc29t
ZSBrZXJuZWwgQVBJcwphcmUgcmVmZXJyZWQgZnJvbSB0aGUgY2hhbmdlIGJ1dCBsb2NhdGUganVz
dCBpbiBIZW8ncyB0cmVlLiBUaHVzLAphbnkgYXBwbGljYXRpb24gb2YgdGhlIHBhdGNoIGJyaW5n
cyBidWlsZCBmYWlsdXJlLCBsaWtlOgoKYGBgCmRyaXZlcnMvZmlyZXdpcmUvb2hjaS5jOiBJbiBm
dW5jdGlvbiDigJhhdF9jb250ZXh0X2ZsdXNo4oCZOgpkcml2ZXJzL2ZpcmV3aXJlL29oY2kuYzox
NDYzOjk6IGVycm9yOiBpbXBsaWNpdCBkZWNsYXJhdGlvbiBvZiBmdW5jdGlvbiDigJhkaXNhYmxl
X3dvcmtfc3luY+KAmTsgZGlkIHlvdSBtZWFuIOKAmGRpc2FibGVfaXJxX25vc3luY+KAmT8gWy1X
ZXJyb3I9aW1wbGljaXQtZnVuY3Rpb24tZGVjbGFyYXRpb25dCiAxNDYzIHwgICAgICAgICBkaXNh
YmxlX3dvcmtfc3luYygmY3R4LT53b3JrKTsKICAgICAgfCAgICAgICAgIF5+fn5+fn5+fn5+fn5+
fn5+CiAgICAgIHwgICAgICAgICBkaXNhYmxlX2lycV9ub3N5bmMKZHJpdmVycy9maXJld2lyZS9v
aGNpLmM6MTQ2ODo5OiBlcnJvcjogaW1wbGljaXQgZGVjbGFyYXRpb24gb2YgZnVuY3Rpb24g4oCY
ZW5hYmxlX2FuZF9xdWV1ZV93b3Jr4oCZIFstV2Vycm9yPWltcGxpY2l0LWZ1bmN0aW9uLWRlY2xh
cmF0aW9uXQogMTQ2OCB8ICAgICAgICAgZW5hYmxlX2FuZF9xdWV1ZV93b3JrKHN5c3RlbV9iaF93
cSwgJmN0eC0+d29yayk7CiAgICAgIHwgICAgICAgICBefn5+fn5+fn5+fn5+fn5+fn5+fn4KYGBg
CgpJbiBteSBodW1ibGUgb3BpbmlvbiwgdGhlIGNoYW5nZSBwcm9wb3NhbCBzaG91bGQgYmUgcG9z
dGVkIGFmdGVyIG1lcmdpbmcKSGVvJ3Mgd29yaywgdG8gcHJldmVudCBkZXZlbG9wZXJzIGFuZCB1
c2VycyBmcm9tIGJlaW5nIHB1enpsZWQuCkZ1cnRoZXJtb3JlLCBhbnkga2luZCBvZiByZXBvcnQg
Zm9yIHRoZSBwZXJmb3JtYW5jZSB0ZXN0IGlzIHByZWZlcmFibGUuCgpFc3BlY2lhbGx5LCBpbiBG
aXJlV2lyZSBzdWJzeXN0ZW0sIDEzOTQgT0hDSSBJVC9JUiBjb250ZXh0cyBjYW4gYmUKcHJvY2Vz
c2VkIGJ5IGJvdGggdGFza2xldCBhbmQgcHJvY2VzcyAoZS5nLiBpb2N0bCksIHRodXMgdGhlIGV4
Y2x1c2l2ZQpjb250cm9sIG9mIHdvcmtxdWV1ZSBmb3IgdGhlIGNvbnRleHRzIGlzIGltcG9ydGFu
dCBiZXR3ZWVuIHRoZW0uIEkgd2lzaAppdCBpcyBkb25lIHN1Y2Nlc3NmdWxseSBieSB0aGUgbmV3
IHBhaXIgb2YgZW5hYmxpbmcvZGlzYWJsaW5nIHdvcmtxdWV1ZQpBUEksIGFuZCBuZWVkIG1vcmUg
aW5mb3JtYXRpb24gYWJvdXQgaXQuCgoKVGhhbmtzCgpUYWthc2hpIFNha2Ftb3RvCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbWFpbGluZyBsaXN0IGxp
bnV4MTM5NC1kZXZlbEBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vm
b3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vbGludXgxMzk0LWRldmVsCg==
