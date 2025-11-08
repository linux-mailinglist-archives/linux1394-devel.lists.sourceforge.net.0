Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F38BCC42540
	for <lists+linux1394-devel@lfdr.de>; Sat, 08 Nov 2025 03:54:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kv30bfqFrOYnyaWYSWbCIPVX30ckapDwKeyMnjm2VvQ=; b=ET/CKuoM8TmV0nayVfJUBQwAWE
	AIfKkXLf9kU1WmLtPNFCIwLK34w2BWQkThn92kMyKKXE6IUToCGDf9Yy7Q4pIiRI5usEo141269Vo
	/96uOo+Mr3k5TxhmcCWxmY2q2ySJlSGc2mCPAv531wjOU8PM7ldjqPdi5eOSxufOv2K0=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1vHZ63-0007tm-Bv;
	Sat, 08 Nov 2025 02:54:35 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1vHZ61-0007tb-6n
 for linux1394-devel@lists.sourceforge.net;
 Sat, 08 Nov 2025 02:54:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=it6IS4AVUD/C1V9mOfQ7TVjD4bPmANhKj8iHZiSOb20=; b=ZHwgV+ueyGx1izhNWVm4YVpdCE
 H34UiaGEiyAqO3VfbhrjDzAfqgpKYNyxBhVRdFXoOMFmae0HWYpekCVQIpLYxaL6yoabwqRfW/yAp
 GZAXaq4Ddta7B9/0Sq+tnodoSUencSW1DOjajRLsMJXdESHTmys3neYZTQCzyCLwx+LU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=it6IS4AVUD/C1V9mOfQ7TVjD4bPmANhKj8iHZiSOb20=; b=cZlbDWGLR4cTaj+duH388Mi6Eq
 xXwDnzTtu1sg77PGblM5pGhO5sJ/pnoAoNYC4knrjr6YXSYgM6T6/gh4sAPXI845THSPkefnlcbPH
 To4ILRpI05JIN9k4gABPZydSynlK6z0A69+FlfVrUG50HmfdLcpFPpOnsu5JiDQ/vubw=;
Received: from fout-b7-smtp.messagingengine.com ([202.12.124.150])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vHZ5z-0002UU-Cz for linux1394-devel@lists.sourceforge.net;
 Sat, 08 Nov 2025 02:54:32 +0000
Received: from phl-compute-05.internal (phl-compute-05.internal [10.202.2.45])
 by mailfout.stl.internal (Postfix) with ESMTP id 957791D00068;
 Fri,  7 Nov 2025 21:54:20 -0500 (EST)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-05.internal (MEProxy); Fri, 07 Nov 2025 21:54:20 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:content-type
 :date:date:from:from:in-reply-to:in-reply-to:message-id
 :mime-version:references:reply-to:subject:subject:to:to; s=fm3;
 t=1762570460; x=1762656860; bh=it6IS4AVUD/C1V9mOfQ7TVjD4bPmANhK
 j8iHZiSOb20=; b=s3+Z7s5tgQ5RsDIeAftZvT5QdqAIhFtaqOafjyzVY02WpDN4
 xmCGt+UUdujsuMuMpVC7C1pgDV1KniPwpqMYNGxQlNQIaTd+MVkjqesdGvZH+uNz
 0qrUPEfzP3bBhkR3DIgWb+A4wz6btiJ+kQqf+Rl6Vl+qvFKHPZ2pA6n8uz0vipBC
 YtwO+i0t++0k46otA8sxanJuRprLBQP4PzSwDMytpLkd//i2RIPKKDCerEA2EN1w
 kEE/RZJhABirQggG+eYQ2T83l51Jx0UvoG9xudC687YO+wtVLh1dyYAHqpjdOQJA
 DNv6kkJSKqncUiIoz468YHVYFVhiDoulsyEK2Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1762570460; x=
 1762656860; bh=it6IS4AVUD/C1V9mOfQ7TVjD4bPmANhKj8iHZiSOb20=; b=y
 1zcNt0N9jM4/xx8DTsdNdJcKuyD4ZKl9XJFFmkT4fUAg3FnZZNWiqWjMd0pO5YuG
 Pzt+5//4NkHMO4ueoqVhJOUCpNCPFSXN1EFnzhsVWrNnhOSWFKWb7qQBlfMWwdCv
 FTqRpuZzxgsh2JleSalOYv6P5Cuth5wcBH3HU13KVtlJUaNg/7bU8LPXiTFWjLNa
 LXrxAlJJ4gFiGeBZaQZHeUhdKiV70QvhoQ4+0O8LiJ/JF+eeh4aFZVAvVq0O+lN/
 Axqb4RIn6JoaG5VJLYRby4gD9XzbEy8ms47QK3w0SGqmkHPb0W9CAm54oW0qsmMv
 Slx43I2O+3mqPi58VdWQA==
X-ME-Sender: <xms:27AOaQBvc4Mqxe1g72WYYWAtppSTxx4fMU3i4V9JaM0Cf3yLRC95FQ>
 <xme:27AOachgyXbhw1Kmd7Ta6PuPdUQKTz70WUnNx5BeByILohu0i2O3Ki2GeMR_aR9Jj
 aT-moVXZP5AIE4691vA46ew-dKclN9x9ubPePY-urYTk-oCEGswbvcS>
X-ME-Received: <xmr:27AOaaNzUFGAzBlBkPSmGwgtSqT6UhNywpyaslPTj4Kk1YdlTikdnBvRxnaEb_nr6c4s3mlgTfjmpkACQjQ2hU58yDa-le-U7jY>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdduledufeelucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
 gurhepfffhvfevuffkfhggtggugfgjsehtkeertddttdejnecuhfhrohhmpefvrghkrghs
 hhhiucfurghkrghmohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjh
 hpqeenucggtffrrghtthgvrhhnpeehieffffeffedtjedtjefhvdevveegtdeuleettedt
 ueelffeugfehfffhkeejtdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmh
 grihhlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggp
 rhgtphhtthhopeekpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehmrghrtghord
 gtrhhivhgvlhhlrghrihesshhushgvrdgtohhmpdhrtghpthhtoheplhhinhhugidqkhgv
 rhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplhhinhhugidufe
 elgedquggvvhgvlheslhhishhtshdrshhouhhrtggvfhhorhhgvgdrnhgvthdprhgtphht
 thhopehtjheskhgvrhhnvghlrdhorhhgpdhrtghpthhtohepjhhirghnghhshhgrnhhlrg
 hisehgmhgrihhlrdgtohhmpdhrtghpthhtohepfhhrvgguvghrihgtsehkvghrnhgvlhdr
 ohhrghdprhgtphhtthhopegsihhgvggrshihsehlihhnuhhtrhhonhhigidruggvpdhrtg
 hpthhtohepmhhhohgtkhhosehsuhhsvgdrtghomh
X-ME-Proxy: <xmx:27AOaU-sIbyJhBG7f_KM3kecbg7UTLLQhu508ocQQ5FTJlU-pxqkUQ>
 <xmx:3LAOaTeovDgyOXkZHt93q_kQnZO1QKRlMAseiXPwKn-Cbpd1K-LEMw>
 <xmx:3LAOabzp3J6ea3sfXzsrYePsgwOQbZ-3rgcsPFiyUebiRBFEUizuew>
 <xmx:3LAOaQJCfCYKOqn5Xc-qtoKew80JCKB1TaEEibI3xOwcjJUvB0A9Ng>
 <xmx:3LAOaV9QtlZ9kStwoGqpiXRXx1GdUDOs4B7dCMDP_JWA-xtgseJVAGyB>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 7 Nov 2025 21:54:18 -0500 (EST)
Date: Sat, 8 Nov 2025 11:54:16 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Marco Crivellari <marco.crivellari@suse.com>
Subject: Re: [PATCH] firewire: core: add WQ_PERCPU to alloc_workqueue users
Message-ID: <20251108025416.GA73420@workstation.local>
Mail-Followup-To: Marco Crivellari <marco.crivellari@suse.com>,
 linux-kernel@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 Tejun Heo <tj@kernel.org>, Lai Jiangshan <jiangshanlai@gmail.com>,
 Frederic Weisbecker <frederic@kernel.org>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Michal Hocko <mhocko@suse.com>
References: <20251107112620.146996-1-marco.crivellari@suse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251107112620.146996-1-marco.crivellari@suse.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, Thanks for the patch. On Fri, Nov 07, 2025 at 12:26:19PM
 +0100, Marco Crivellari wrote: > Currently if a user enqueues a work item
 using schedule_delayed_work() the > used wq is "system_wq" (per-cpu wq) while
 queue_delayed [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1vHZ5z-0002UU-Cz
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
Cc: Michal Hocko <mhocko@suse.com>, Frederic Weisbecker <frederic@kernel.org>,
 Lai Jiangshan <jiangshanlai@gmail.com>, linux-kernel@vger.kernel.org,
 Tejun Heo <tj@kernel.org>, linux1394-devel@lists.sourceforge.net,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

SGksCgpUaGFua3MgZm9yIHRoZSBwYXRjaC4KCk9uIEZyaSwgTm92IDA3LCAyMDI1IGF0IDEyOjI2
OjE5UE0gKzAxMDAsIE1hcmNvIENyaXZlbGxhcmkgd3JvdGU6Cj4gQ3VycmVudGx5IGlmIGEgdXNl
ciBlbnF1ZXVlcyBhIHdvcmsgaXRlbSB1c2luZyBzY2hlZHVsZV9kZWxheWVkX3dvcmsoKSB0aGUK
PiB1c2VkIHdxIGlzICJzeXN0ZW1fd3EiIChwZXItY3B1IHdxKSB3aGlsZSBxdWV1ZV9kZWxheWVk
X3dvcmsoKSB1c2UKPiBXT1JLX0NQVV9VTkJPVU5EICh1c2VkIHdoZW4gYSBjcHUgaXMgbm90IHNw
ZWNpZmllZCkuIFRoZSBzYW1lIGFwcGxpZXMgdG8KPiBzY2hlZHVsZV93b3JrKCkgdGhhdCBpcyB1
c2luZyBzeXN0ZW1fd3EgYW5kIHF1ZXVlX3dvcmsoKSwgdGhhdCBtYWtlcyB1c2UKPiBhZ2FpbiBv
ZiBXT1JLX0NQVV9VTkJPVU5ELgo+IFRoaXMgbGFjayBvZiBjb25zaXN0ZW5jeSBjYW5ub3QgYmUg
YWRkcmVzc2VkIHdpdGhvdXQgcmVmYWN0b3JpbmcgdGhlIEFQSS4KPiAKPiBhbGxvY193b3JrcXVl
dWUoKSB0cmVhdHMgYWxsIHF1ZXVlcyBhcyBwZXItQ1BVIGJ5IGRlZmF1bHQsIHdoaWxlIHVuYm91
bmQKPiB3b3JrcXVldWVzIG11c3Qgb3B0LWluIHZpYSBXUV9VTkJPVU5ELgo+IAo+IFRoaXMgZGVm
YXVsdCBpcyBzdWJvcHRpbWFsOiBtb3N0IHdvcmtsb2FkcyBiZW5lZml0IGZyb20gdW5ib3VuZCBx
dWV1ZXMsCj4gYWxsb3dpbmcgdGhlIHNjaGVkdWxlciB0byBwbGFjZSB3b3JrZXIgdGhyZWFkcyB3
aGVyZSB0aGV54oCZcmUgbmVlZGVkIGFuZAo+IHJlZHVjaW5nIG5vaXNlIHdoZW4gQ1BVcyBhcmUg
aXNvbGF0ZWQuCj4gCj4gVGhpcyBjb250aW51ZXMgdGhlIGVmZm9ydCB0byByZWZhY3RvciB3b3Jr
cXVldWUgQVBJcywgd2hpY2ggYmVnYW4gd2l0aAo+IHRoZSBpbnRyb2R1Y3Rpb24gb2YgbmV3IHdv
cmtxdWV1ZXMgYW5kIGEgbmV3IGFsbG9jX3dvcmtxdWV1ZSBmbGFnIGluOgo+IAo+IGNvbW1pdCAx
MjhlYTlmNmNjZmIgKCJ3b3JrcXVldWU6IEFkZCBzeXN0ZW1fcGVyY3B1X3dxIGFuZCBzeXN0ZW1f
ZGZsX3dxIikKPiBjb21taXQgOTMwYzJlYTU2NmFmICgid29ya3F1ZXVlOiBBZGQgbmV3IFdRX1BF
UkNQVSBmbGFnIikKPiAKPiBUaGlzIGNoYW5nZSBhZGRzIGEgbmV3IFdRX1BFUkNQVSBmbGFnIHRv
IGV4cGxpY2l0bHkgcmVxdWVzdCBhbGxvY193b3JrcXVldWUoKQo+IHRvIGJlIHBlci1jcHUgd2hl
biBXUV9VTkJPVU5EIGhhcyBub3QgYmVlbiBzcGVjaWZpZWQuCj4gCj4gV2l0aCB0aGUgaW50cm9k
dWN0aW9uIG9mIHRoZSBXUV9QRVJDUFUgZmxhZyAoZXF1aXZhbGVudCB0byAhV1FfVU5CT1VORCks
Cj4gYW55IGFsbG9jX3dvcmtxdWV1ZSgpIGNhbGxlciB0aGF0IGRvZXNu4oCZdCBleHBsaWNpdGx5
IHNwZWNpZnkgV1FfVU5CT1VORAo+IG11c3Qgbm93IHVzZSBXUV9QRVJDUFUuCj4gCj4gT25jZSBt
aWdyYXRpb24gaXMgY29tcGxldGUsIFdRX1VOQk9VTkQgY2FuIGJlIHJlbW92ZWQgYW5kIHVuYm91
bmQgd2lsbAo+IGJlY29tZSB0aGUgaW1wbGljaXQgZGVmYXVsdC4KPiAKPiBTdWdnZXN0ZWQtYnk6
IFRlanVuIEhlbyA8dGpAa2VybmVsLm9yZz4KPiBTaWduZWQtb2ZmLWJ5OiBNYXJjbyBDcml2ZWxs
YXJpIDxtYXJjby5jcml2ZWxsYXJpQHN1c2UuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2ZpcmV3aXJl
L2NvcmUtdHJhbnNhY3Rpb24uYyB8IDMgKystCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlv
bnMoKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9maXJld2lyZS9j
b3JlLXRyYW5zYWN0aW9uLmMgYi9kcml2ZXJzL2ZpcmV3aXJlL2NvcmUtdHJhbnNhY3Rpb24uYwo+
IGluZGV4IGM2NWY0OTFjNTRkMC4uYzE1ZGJlODgyY2JlIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
ZmlyZXdpcmUvY29yZS10cmFuc2FjdGlvbi5jCj4gKysrIGIvZHJpdmVycy9maXJld2lyZS9jb3Jl
LXRyYW5zYWN0aW9uLmMKPiBAQCAtMTQzNyw3ICsxNDM3LDggQEAgc3RhdGljIGludCBfX2luaXQg
ZndfY29yZV9pbml0KHZvaWQpCj4gIHsKPiAgCWludCByZXQ7Cj4gIAo+IC0JZndfd29ya3F1ZXVl
ID0gYWxsb2Nfd29ya3F1ZXVlKCJmaXJld2lyZSIsIFdRX01FTV9SRUNMQUlNLCAwKTsKPiArCWZ3
X3dvcmtxdWV1ZSA9IGFsbG9jX3dvcmtxdWV1ZSgiZmlyZXdpcmUiLCBXUV9NRU1fUkVDTEFJTSB8
IFdRX1BFUkNQVSwKPiArCQkJCSAgICAgICAwKTsKPiAgCWlmICghZndfd29ya3F1ZXVlKQo+ICAJ
CXJldHVybiAtRU5PTUVNOwoKQXMgZmFyIGFzIEkga25vdywgdGhlcmUgaXMgbm8gc3BlY2lmaWMg
cmVhc29uIHRvIHVzZSBwZXItY3B1IHdvcmtxdWV1ZQpmb3IgdGhpcyBwdXJwb3NlIGluIHRoaXMg
c3Vic3lzdGVtLiBJIGJlbGlldmUgdGhhdCB1c2luZyB1bmJvdW5kIHdvcmtxdWV1ZQp3b3VsZCBi
ZSBtb3JlIGJlbmVmaWNpYWwsIHNpbmNlIHRoZSB3b3JrcXVldWUgdXNlcnMganVzdCBvcGVyYXRl
IGNoYWluZWQKMTM5NCBPSENJIERNQSBkZXNjcmlwdG9yIG92ZXIgc3lzdGVtIG1lbW9yeSBmb3Ig
YXN5bmNocm9ub3VzCmNvbW11bmljYXRpb24uCgpXb3VsZCBpdCBiZSBhY2NlcHRhYmxlIGZvciB5
b3UgdG8gYWRkIFdRX1VOQk9VTkQgZmxhZyB0byB0aGUgd29ya3F1ZXVlPwpJZiBzbywgSSBjYW4g
cHJlcGFyZSBhIHBhdGNoIGZvciB0aGUgbmV4dCBtZXJnZSB3aW5kb3cuCgoKVGhhbmtzCgpUYWth
c2hpIFNha2Ftb3RvCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbWFpbGluZyBsaXN0IGxpbnV4MTM5NC1kZXZlbEBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQK
aHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vbGludXgxMzk0LWRl
dmVsCg==
