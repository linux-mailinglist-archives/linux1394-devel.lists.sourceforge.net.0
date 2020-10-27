Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A31CE29AC74
	for <lists+linux1394-devel@lfdr.de>; Tue, 27 Oct 2020 13:49:04 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1kXOPD-0005CO-TY; Tue, 27 Oct 2020 12:48:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <arnd@kernel.org>) id 1kXOPB-0005Bs-Ue
 for linux1394-devel@lists.sourceforge.net; Tue, 27 Oct 2020 12:48:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:To:Subject:
 Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=808b6lgxmfcf3RtYF5hQe3zl2xzcwNFmqSvUIZCptT0=; b=B2KZ8glJ/O8U5MZLPsjXcDjBTu
 uIrs9Za8Ecygdmefpz7afHSxOgbOFOzZPu+etv8ifsxDM9TT4XVK17BRhkAE6o8h3tk+D2zjI0wit
 4+f9zRTARz8WB6bRDnZqoepSS/z1G5YaJbeOrRvh7RVf59IXD83f1b67EZVxkw6xLxWI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=808b6lgxmfcf3RtYF5hQe3zl2xzcwNFmqSvUIZCptT0=; b=eI+Oo2LsJYCbOdioM7eL+jmeBF
 K2ByGl79CTYZXKFQe+Wq1akz6QNUsRd7qrPWeWjuWks8JaOgNIvkJhNC2hHLUG++Kui+Xb3wg75Pv
 1SkWX4JRSwZDmRi1JYP3rq2lysOKHMyFEV2j4HGvKeawoKUx9ybP2kJURPpZsWSo5Y90=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kXOP3-008kwQ-SX
 for linux1394-devel@lists.sourceforge.net; Tue, 27 Oct 2020 12:48:49 +0000
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com
 [209.85.222.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6180121D41
 for <linux1394-devel@lists.sourceforge.net>;
 Tue, 27 Oct 2020 12:48:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1603802911;
 bh=DY2M/JF8u8++vvY33r9aVEi8JqabvE0ZfMMQQVGhmcY=;
 h=References:In-Reply-To:From:Date:Subject:To:From;
 b=2ZcFMUM3nrTTaQ0d5lbsywi1WRvwoEDYPaA8GBC/U5gzO+fIVEUrM5oNHdsCFv0pA
 ww/GiXUvt81+VEjYhHo8cowIGzz+zKh4OraEeH7z5/4DctGD+AC+iukoNtfOc/Amwg
 jMmTSbIRUXDQWe57h2fVa02hvV5HkRyctPOPaS6c=
Received: by mail-qk1-f182.google.com with SMTP id 140so964561qko.2
 for <linux1394-devel@lists.sourceforge.net>;
 Tue, 27 Oct 2020 05:48:31 -0700 (PDT)
X-Gm-Message-State: AOAM533kww43T8hSk8HbUOBSWVsTW7JLlGT/jhy2BzrKMsL5jUG1PDYc
 j3GzrmRnlQKc+Pw317NG3uc+3Rp5JBfiOfY2vc8=
X-Google-Smtp-Source: ABdhPJzwxHTf7owunGVAIo5uhnAazdm93JgL31Odcz4o000UCLcRrbObDpjq7Fu0pxkKcUGAYIwM7AY4//1Wp6iswsw=
X-Received: by 2002:a05:620a:22c9:: with SMTP id
 o9mr1954826qki.286.1603802910461; 
 Tue, 27 Oct 2020 05:48:30 -0700 (PDT)
MIME-Version: 1.0
References: <20201026215138.3893732-1-arnd@kernel.org>
 <20201027001316.GA27589@workstation>
In-Reply-To: <20201027001316.GA27589@workstation>
From: Arnd Bergmann <arnd@kernel.org>
Date: Tue, 27 Oct 2020 13:48:14 +0100
X-Gmail-Original-Message-ID: <CAK8P3a0r0Yy2TWv6gWPUW9rJVuBC9oPAbQgsNQL3TBm+UYrW5Q@mail.gmail.com>
Message-ID: <CAK8P3a0r0Yy2TWv6gWPUW9rJVuBC9oPAbQgsNQL3TBm+UYrW5Q@mail.gmail.com>
Subject: Re: [PATCH] firewire: fix function type cast warning
To: Arnd Bergmann <arnd@kernel.org>, Stefan Richter <stefanr@s5r6.in-berlin.de>,
 linux1394-devel@lists.sourceforge.net, 
 "Gustavo A. R. Silva" <gustavoars@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 oscar.carter@gmail.com
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kXOP3-008kwQ-SX
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

T24gVHVlLCBPY3QgMjcsIDIwMjAgYXQgMToxMyBBTSBUYWthc2hpIFNha2Ftb3RvCjxvLXRha2Fz
aGlAc2FrYW1vY2NoaS5qcD4gd3JvdGU6Cj4gT24gTW9uLCBPY3QgMjYsIDIwMjAgYXQgMTA6NTE6
MjdQTSArMDEwMCwgQXJuZCBCZXJnbWFubiB3cm90ZToKPiA+IEZyb206IEFybmQgQmVyZ21hbm4g
PGFybmRAYXJuZGIuZGU+Cj4gPgo+ID4gZ2NjIC1XZXh0cmEgY29tcGxhaW5zIGFib3V0IGEgc3Vz
cGljaW91cyBjYXN0Ogo+ID4KPiA+IHJpdmVycy9maXJld2lyZS9jb3JlLWNkZXYuYzo5ODU6ODog
d2FybmluZzogY2FzdCBiZXR3ZWVuIGluY29tcGF0aWJsZSBmdW5jdGlvbiB0eXBlcyBmcm9tIOKA
mHZvaWQgKCopKHN0cnVjdCBmd19pc29fY29udGV4dCAqLCBkbWFfYWRkcl90LCAgdm9pZCAqKeKA
mSB7YWthIOKAmHZvaWQgKCopKHN0cnVjdCBmd19pc29fY29udGV4dCAqLCBsb25nIGxvbmcgdW5z
aWduZWQgaW50LCAgdm9pZCAqKeKAmX0gdG8g4oCYdm9pZCAoKikoc3RydWN0IGZ3X2lzb19jb250
ZXh0ICosIHUzMiwgIHNpemVfdCwgIHZvaWQgKiwgdm9pZCAqKeKAmSB7YWthIOKAmHZvaWQgKCop
KHN0cnVjdCBmd19pc29fY29udGV4dCAqLCB1bnNpZ25lZCBpbnQsICBsb25nIHVuc2lnbmVkIGlu
dCwgIHZvaWQgKiwgdm9pZCAqKeKAmX0gWy1XY2FzdC1mdW5jdGlvbi10eXBlXQo+ID4KPiA+IFRo
ZSBiZWhhdmlvciBpcyBjb3JyZWN0IGluIHRoZSBlbmQsIGJ1dCB0aGlzIGlzIG1vcmUgY2xlYXJs
eQo+ID4gZXhwcmVzc2VkIHVzaW5nIGEgdHJhbnNwYXJlbnQgdW5pb24uCj4gPgo+ID4gRml4ZXM6
IDg3MmUzMzBlMzg4MCAoImZpcmV3aXJlOiBhZGQgaXNvY2hyb25vdXMgbXVsdGljaGFubmVsIHJl
Y2VwdGlvbiIpCj4gPiBTaWduZWQtb2ZmLWJ5OiBBcm5kIEJlcmdtYW5uIDxhcm5kQGFybmRiLmRl
Pgo+ID4gLS0tCj4gPiAgZHJpdmVycy9maXJld2lyZS9jb3JlLWNkZXYuYyB8ICA2ICsrKy0tLQo+
ID4gIGRyaXZlcnMvZmlyZXdpcmUvY29yZS1pc28uYyAgfCAgMiArLQo+ID4gIGluY2x1ZGUvbGlu
dXgvZmlyZXdpcmUuaCAgICAgfCAxNyArKysrKysrKy0tLS0tLS0tLQo+ID4gIDMgZmlsZXMgY2hh
bmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgMTMgZGVsZXRpb25zKC0pCj4KPiBPc2NhciBDYXJ0ZXIg
aGFzIHBvc3RlZCBhIHBhdGNoIHRvIGZpeCBpdC4KPiBodHRwczovL3NvdXJjZWZvcmdlLm5ldC9w
L2xpbnV4MTM5NC9tYWlsbWFuL21lc3NhZ2UvMzcwMjQ5NjYvCj4KPiBJIGRvbid0IGtub3cgZXhh
Y3RseSBidXQgbWFpbnRhaW5lcnMgc2VlbXMgdG8gb3Zlcmxvb2sgaXQuLi4KClJpZ2h0LCB0aGF0
IHNlZW1zIGZhaXJseSBzaW1pbGFyIHRvIG15IHZlcnNpb24gYnV0IGF2b2lkcyB0aGUgR05VCmV4
dGVuc2lvbiwgc28gaXQgd291bGQgYmUgYmV0dGVyIHRoYXQgdmVyc2lvbi4KCiAgICAgICBBcm5k
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbWFpbGlu
ZyBsaXN0IGxpbnV4MTM5NC1kZXZlbEBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0
cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vbGludXgxMzk0LWRldmVsCg==
