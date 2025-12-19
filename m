Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AB723CD0393
	for <lists+linux1394-devel@lfdr.de>; Fri, 19 Dec 2025 15:17:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:References:In-Reply-To:Message-Id:To:From:Date:MIME-Version:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YmUSus7wjuICWk613CFf+M+dr1BhIm+dzKagCU81y0s=; b=ZCh3sAiCTjTgi8HbmAG//s+0xX
	jH1z9utAap87A39LgaEWT1CbkzDTGctxk+XJlMvefR4GCFOwScbny9ol5BEnuP65Vuhq0LSOA+TPd
	kv8N+4DwDFEQeryWmgbeonhyrBYEhIdNTLj6ZM0axPonn7wcV9ZTRIeIRM1jGkb/QOnA=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1vWbI4-00068V-3b;
	Fri, 19 Dec 2025 14:17:08 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1vWbI2-00068E-2R
 for linux1394-devel@lists.sourceforge.net;
 Fri, 19 Dec 2025 14:17:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:
 References:In-Reply-To:Message-Id:Cc:To:From:Date:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7mQ5O7urY4OAN8MS8OZdVBoWsY2f4uUeniiUVdrvKPw=; b=kxtRfJeQlOQnFDt4YhA65WPXiT
 HzMmFHoAlUfehtOjvYf6GlrHhF1xDYaBznxImLPp2TffSIcssMF43VmhiBappnxZKk2n5e5pbkLcf
 J88cV1JZ0iU663Z0/ee4ckRVW9ciE6Q+Y5EMkCRlNcnBfPzOyq/+qDGMBau0OYCezlI4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:References:In-Reply-To:
 Message-Id:Cc:To:From:Date:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7mQ5O7urY4OAN8MS8OZdVBoWsY2f4uUeniiUVdrvKPw=; b=RyXYKQ/vNzDNFo6oyBlCc6DpFu
 +5USyvJFe5pMpxKkLuD9wYm3Ljtcu1zoQQgwaLOS/MW4B69Ev9ueo/1A6jm3W1eO93C8EAd148ggB
 /hXzTsIRn7w7Dca0NgeH0YUMSxvRaVUWhW3LH2OCT0QQACZFll/SqYCEtqGNQmbMRyTk=;
Received: from fhigh-a4-smtp.messagingengine.com ([103.168.172.155])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vWbI1-0005QJ-2X for linux1394-devel@lists.sourceforge.net;
 Fri, 19 Dec 2025 14:17:06 +0000
Received: from phl-compute-10.internal (phl-compute-10.internal [10.202.2.50])
 by mailfhigh.phl.internal (Postfix) with ESMTP id 5871E14000C0;
 Fri, 19 Dec 2025 09:16:59 -0500 (EST)
Received: from phl-imap-06 ([10.202.2.83])
 by phl-compute-10.internal (MEProxy); Fri, 19 Dec 2025 09:16:59 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:content-type
 :date:date:from:from:in-reply-to:in-reply-to:message-id
 :mime-version:references:reply-to:subject:subject:to:to; s=fm1;
 t=1766153819; x=1766240219; bh=7mQ5O7urY4OAN8MS8OZdVBoWsY2f4uUe
 niiUVdrvKPw=; b=eHQ65buQf9ofmvMHu1RUg6KK/YUlRCYlHg3IgLJ1WolQwCkV
 LBDZGU8ODAbiw91LY95xUDg+DvMSqgVh/X2vjNyBzqbKKpo5jYTBwXC1LP+oRk4Q
 4vlQtMA4emTBxgkUF8egD/pzTxOptkpCXhPhE4EjLVKTEMdBvopBi51rI3TQz0ZL
 kSQm5ztkh+YPQ9nOlsSuxe9etbFKL6RT3h+8vUY0y/q/9BIY8/ZYaJFmwxbIKwij
 AfL2ptm2URtydZ5zdsOtNA/uVfGwekagaFNEOj4syWHgfhyF5CG64Ex2Fn8ETyNd
 +BgaZ+RHFjolV4KwMTyWKudZGR+j3HuHUWEeMg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1766153819; x=
 1766240219; bh=7mQ5O7urY4OAN8MS8OZdVBoWsY2f4uUeniiUVdrvKPw=; b=S
 ObleORpPGgGwVHvqmZQASN9RSDl5X6eE63POQJO+kXuyL8/P6RHA4eWBqXdgT4tg
 UZWlwxancNyJbHp1jiiJ/GwjTVzrAe5+tvpPJsI5+IMQIAPgv3SFYc7ORKAAb9mu
 NqXj4UK3AYepq0y2Nh12PSnKGC/kc7Eoxv+yQXr8SEwvLnrZYWkIz8VmIZEmp+z2
 G85NO+iCBYAeyCHprQE3s1ROKmwbKsixHurBLJXN1o1L8h5fU8Oow2i6WzeE6HII
 kwNPBdoa+pGfv1/ghQ0yScW5KerNpNQP2zKyZKcpgLzsJzDkz32UsKA2kPAtVJco
 UHyp2fWeBVFbpLlSyrgEg==
X-ME-Sender: <xms:Wl5FaSYP0qwCu43vEQ9fCZVrNrq_wkl_rXdZ6vOJHNMJD4FViykw6w>
 <xme:Wl5FaQNroxXY3LhbLC0T9DuUqP0-za9h6NPhWQGkwj7pINKCr_vWl2b-50Na33dNU
 bCt86ukKe4jX6KcmvznOks23xOQOtt783hN3CsCoOD4ljJe_E6A1xY>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdegkeehudcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
 hrpefoggffhffvvefkjghfufgtgfesthhqredtredtjeenucfhrhhomhepfdfvrghkrghs
 hhhiucfurghkrghmohhtohdfuceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhird
 hjpheqnecuggftrfgrthhtvghrnhepkefhtefftdelieekteevfeegkeeivedugedtudek
 udejvdetvdefffefteduueegnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucevlh
 hushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopeegpdhmohguvgepsh
 hmthhpohhuthdprhgtphhtthhopehfohhurhhivghrrdhthhhomhgrshesghhmrghilhdr
 tghomhdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlsehlihhsthhsrdhsoh
 hurhgtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehv
 ghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtoheptghhrhhishhtohhphhgvrdhjrg
 hilhhlvghtseifrghnrgguohhordhfrh
X-ME-Proxy: <xmx:Wl5FadAa-2HGrtpiTfydANPxRJhen-uadX4dh_BnPXrWRGn0OvupvA>
 <xmx:Wl5FaW-YV7hZ5JlJ4dJxDWPjCIPykM6Z-KEchSDhKGY9tl6gYkXxlw>
 <xmx:Wl5FacG0foBANCMl7WSjQ_75sgoQY6CUNMplH9m0_BzwFN1c8p70Fg>
 <xmx:Wl5FacNCcaesH0_V5b57U8iQKT5Ut-WZBsFVL9cI41Igdf1XdOqQRw>
 <xmx:W15FaY_FrK9p4E1EqTh_zCO_53tTIXPLpxUw3PB_fkCerUsag9HUjFhm>
Feedback-ID: ie8e14432:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
 id D31F72400098; Fri, 19 Dec 2025 09:16:58 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
X-ThreadId: AWjw7c8DSKJo
Date: Fri, 19 Dec 2025 23:16:37 +0900
From: "Takashi Sakamoto" <o-takashi@sakamocchi.jp>
To: "Christophe JAILLET" <christophe.jaillet@wanadoo.fr>,
 "Thomas Fourier" <fourier.thomas@gmail.com>
Message-Id: <f62dc6e5-12e0-414f-8a7b-0675d95938cb@app.fastmail.com>
In-Reply-To: <7ffdcfff-0f2f-4563-9051-d398f3c5c6a7@wanadoo.fr>
References: <20251216165420.38355-2-fourier.thomas@gmail.com>
 <7ffdcfff-0f2f-4563-9051-d398f3c5c6a7@wanadoo.fr>
Subject: Re: [PATCH] firewire: nosy: Fix dma_free_coherent() size
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, I'm sorry to be late for reply, but I'm in travel and
 could not process the reviewed patches for my tree. Please wait for the next
 weekend. It's our misfortune that Christophe's first proposal has been
 overlooked.
 (The patch was posted before 2023, when I took over the role...) Let us put
 it for next merge window to v6.20 kernel. 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
X-Headers-End: 1vWbI1-0005QJ-2X
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

SGksCgpJJ20gc29ycnkgdG8gYmUgbGF0ZSBmb3IgcmVwbHksIGJ1dCBJJ20gaW4gdHJhdmVsIGFu
ZCBjb3VsZCBub3QgcHJvY2VzcyB0aGUKcmV2aWV3ZWQgcGF0Y2hlcyBmb3IgbXkgdHJlZS4gUGxl
YXNlIHdhaXQgZm9yIHRoZSBuZXh0IHdlZWtlbmQuCgpJdCdzIG91ciBtaXNmb3J0dW5lIHRoYXQg
Q2hyaXN0b3BoZSdzIGZpcnN0IHByb3Bvc2FsIGhhcyBiZWVuIG92ZXJsb29rZWQuCihUaGUgcGF0
Y2ggd2FzIHBvc3RlZCBiZWZvcmUgMjAyMywgd2hlbiBJIHRvb2sgb3ZlciB0aGUgcm9sZS4uLikK
TGV0IHVzIHB1dCBpdCBmb3IgbmV4dCBtZXJnZSB3aW5kb3cgdG8gdjYuMjAga2VybmVsLgoKT24g
V2VkLCBEZWMgMTcsIDIwMjUsIGF0IDAyOjQ3LCBDaHJpc3RvcGhlIEpBSUxMRVQgd3JvdGU6Cj4g
TGUgMTYvMTIvMjAyNSDDoCAxNzo1NCwgVGhvbWFzIEZvdXJpZXIgYSDDqWNyaXTCoDoKPj4gSXQg
bG9va3MgbGlrZSB0aGUgYnVmZmVyIGFsbG9jYXRlZCBhbmQgbWFwcGVkIGluIGFkZF9jYXJkKCkg
aXMgZG9uZQo+PiB3aXRoIHNpemUgUkNWX0JVRkZFUl9TSVpFIHdoaWNoIGlzIDE2IEtCIGFuZCA0
S0IuCj4+IAo+PiBGaXhlczogMjg2NDY4MjEwZDgzICgiZmlyZXdpcmU6IG5ldyBkcml2ZXI6IG5v
c3kgLSBJRUVFIDEzOTQgdHJhZmZpYyBzbmlmZmVyIikKPj4gU2lnbmVkLW9mZi1ieTogVGhvbWFz
IEZvdXJpZXIgPGZvdXJpZXIudGhvbWFzQGdtYWlsLmNvbT4KPgo+IFJldmlld2VkLWJ5OiBDaHJp
c3RvcGhlIEpBSUxMRVQgPGNocmlzdG9waGUuamFpbGxldEB3YW5hZG9vLmZyPgo+Cj4gQW5kIGZv
ciB0aGUgcmVjb3Jkcywgc2VlIFsxXS4KPgo+IENKCj4KPiBbMV06IAo+IGh0dHBzOi8vbG9yZS5r
ZXJuZWwub3JnL2xrbWwvMjAyMDA2MjUxOTE1NTQuOTQxNjE0LTEtY2hyaXN0b3BoZS5qYWlsbGV0
QHdhbmFkb28uZnIvCj4KPj4gLS0tCj4+ICAgZHJpdmVycy9maXJld2lyZS9ub3N5LmMgfCAxMCAr
KysrKy0tLS0tCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlv
bnMoLSkKPj4gCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2ZpcmV3aXJlL25vc3kuYyBiL2RyaXZl
cnMvZmlyZXdpcmUvbm9zeS5jCj4+IGluZGV4IGVhMzFhYzdhYzFjYS4uZjU2MmU4MmU1NDM4IDEw
MDY0NAo+PiAtLS0gYS9kcml2ZXJzL2ZpcmV3aXJlL25vc3kuYwo+PiArKysgYi9kcml2ZXJzL2Zp
cmV3aXJlL25vc3kuYwo+PiBAQCAtNDk0LDYgKzQ5NCw4IEBAIGlycV9oYW5kbGVyKGludCBpcnEs
IHZvaWQgKmRldmljZSkKPj4gICAJcmV0dXJuIElSUV9IQU5ETEVEOwo+PiAgIH0KPj4gICAKPj4g
KyNkZWZpbmUgUkNWX0JVRkZFUl9TSVpFICgxNiAqIDEwMjQpCj4KPiBNYXliZSB0aGlzIGNvdWxk
IGJlIG1vdmVkIGF0IHRoZSB0b3Agb2YgdGhlIGZpbGUgd2hlbiAjZGVmaW5lIGFyZSAKPiB1c3Vh
bGx5IHBsYWNlZC4KPgo+PiArCj4+ICAgc3RhdGljIHZvaWQKPj4gICByZW1vdmVfY2FyZChzdHJ1
Y3QgcGNpX2RldiAqZGV2KQo+PiAgIHsKPj4gQEAgLTUxNywxNiArNTE5LDE0IEBAIHJlbW92ZV9j
YXJkKHN0cnVjdCBwY2lfZGV2ICpkZXYpCj4+ICAgCQkJICBseW54LT5yY3Zfc3RhcnRfcGNsLCBs
eW54LT5yY3Zfc3RhcnRfcGNsX2J1cyk7Cj4+ICAgCWRtYV9mcmVlX2NvaGVyZW50KCZseW54LT5w
Y2lfZGV2aWNlLT5kZXYsIHNpemVvZihzdHJ1Y3QgcGNsKSwKPj4gICAJCQkgIGx5bngtPnJjdl9w
Y2wsIGx5bngtPnJjdl9wY2xfYnVzKTsKPj4gLQlkbWFfZnJlZV9jb2hlcmVudCgmbHlueC0+cGNp
X2RldmljZS0+ZGV2LCBQQUdFX1NJWkUsIGx5bngtPnJjdl9idWZmZXIsCj4+IC0JCQkgIGx5bngt
PnJjdl9idWZmZXJfYnVzKTsKPj4gKwlkbWFfZnJlZV9jb2hlcmVudCgmbHlueC0+cGNpX2Rldmlj
ZS0+ZGV2LCBSQ1ZfQlVGRkVSX1NJWkUsCj4+ICsJCQkgIGx5bngtPnJjdl9idWZmZXIsIGx5bngt
PnJjdl9idWZmZXJfYnVzKTsKPj4gICAKPj4gICAJaW91bm1hcChseW54LT5yZWdpc3RlcnMpOwo+
PiAgIAlwY2lfZGlzYWJsZV9kZXZpY2UoZGV2KTsKPj4gICAJbHlueF9wdXQobHlueCk7Cj4+ICAg
fQo+PiAgIAo+PiAtI2RlZmluZSBSQ1ZfQlVGRkVSX1NJWkUgKDE2ICogMTAyNCkKPj4gLQo+PiAg
IHN0YXRpYyBpbnQKPj4gICBhZGRfY2FyZChzdHJ1Y3QgcGNpX2RldiAqZGV2LCBjb25zdCBzdHJ1
Y3QgcGNpX2RldmljZV9pZCAqdW51c2VkKQo+PiAgIHsKPj4gQEAgLTY4MCw3ICs2ODAsNyBAQCBh
ZGRfY2FyZChzdHJ1Y3QgcGNpX2RldiAqZGV2LCBjb25zdCBzdHJ1Y3QgcGNpX2RldmljZV9pZCAq
dW51c2VkKQo+PiAgIAkJZG1hX2ZyZWVfY29oZXJlbnQoJmx5bngtPnBjaV9kZXZpY2UtPmRldiwg
c2l6ZW9mKHN0cnVjdCBwY2wpLAo+PiAgIAkJCQkgIGx5bngtPnJjdl9wY2wsIGx5bngtPnJjdl9w
Y2xfYnVzKTsKPj4gICAJaWYgKGx5bngtPnJjdl9idWZmZXIpCj4+IC0JCWRtYV9mcmVlX2NvaGVy
ZW50KCZseW54LT5wY2lfZGV2aWNlLT5kZXYsIFBBR0VfU0laRSwKPj4gKwkJZG1hX2ZyZWVfY29o
ZXJlbnQoJmx5bngtPnBjaV9kZXZpY2UtPmRldiwgUkNWX0JVRkZFUl9TSVpFLAo+PiAgIAkJCQkg
IGx5bngtPnJjdl9idWZmZXIsIGx5bngtPnJjdl9idWZmZXJfYnVzKTsKPj4gICAJaW91bm1hcChs
eW54LT5yZWdpc3RlcnMpOwoKCkNoZWVycwoKVGFrYXNoaSBTYWthbW90bwoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm1haWxpbmcgbGlzdCBsaW51eDEz
OTQtZGV2ZWxAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2Uu
bmV0L2xpc3RzL2xpc3RpbmZvL2xpbnV4MTM5NC1kZXZlbAo=
