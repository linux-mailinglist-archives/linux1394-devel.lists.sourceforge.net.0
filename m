Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F7B8C52573
	for <lists+linux1394-devel@lfdr.de>; Wed, 12 Nov 2025 13:56:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JfYzh5rZsEH7cTttOFyxRvLNUP5TtnjYh4eGZUSXBlA=; b=adCwpUSP34pS6REuliM+xsHXOW
	+i772Wxw573ObuXLW8lWb9bIZheOoUKcs2to0iB/jjrUqq4ik7RRWnT2f+DG4nsrUAFDeKtVHkNmW
	fVkmQ8HMDKHbBY3YyxbGOji56KOlI/9h+5Yx/NPs3De2PNBvW9P98ygTQpKFEU8Lw/4g=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1vJAOb-0003AY-6A;
	Wed, 12 Nov 2025 12:56:21 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1vJAOU-0003AK-0w
 for linux1394-devel@lists.sourceforge.net;
 Wed, 12 Nov 2025 12:56:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tJ22zlrlu3Vel3DOJxla0AS5oBx5Wd5Q85qKqPsVN/I=; b=kv5RxUlzBIcamXOVa90pnE7T6Y
 IW5It/PpQvlurJSmcz0E2gBciRlnmizX47arrR1x48Te2YsoNJ+BVwVee/pQmW5vOct8cYobcaudO
 NFaej+HcleDFwJx7LcyJQFnBZ2EaswfYw8JSm2fOCJMyqSQ+ck/fqG7jVGW2Ljms/NQQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tJ22zlrlu3Vel3DOJxla0AS5oBx5Wd5Q85qKqPsVN/I=; b=GW2Y2E3NpHMx6kApmsekDdTMdq
 PUqJczghmkYzF/tlTPe0g+6SwjsFLaMN+PwlUKY9MY8xJDSlyO38haUKdNyXz46+zB5LJ4yv3y7al
 pqSGeElORh0/sH29fWNMsjPFugRmJtIHkTmT67mbnUaH9boXTTBbYDspFwqdBqDxQpXo=;
Received: from fhigh-b8-smtp.messagingengine.com ([202.12.124.159])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vJAOR-00057S-RJ for linux1394-devel@lists.sourceforge.net;
 Wed, 12 Nov 2025 12:56:13 +0000
Received: from phl-compute-04.internal (phl-compute-04.internal [10.202.2.44])
 by mailfhigh.stl.internal (Postfix) with ESMTP id E247A7A001D;
 Wed, 12 Nov 2025 07:56:05 -0500 (EST)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-04.internal (MEProxy); Wed, 12 Nov 2025 07:56:06 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:content-type
 :date:date:from:from:in-reply-to:in-reply-to:message-id
 :mime-version:references:reply-to:subject:subject:to:to; s=fm3;
 t=1762952165; x=1763038565; bh=tJ22zlrlu3Vel3DOJxla0AS5oBx5Wd5Q
 85qKqPsVN/I=; b=UK7fd9z374LzG4q3ktkKx90gR0duxPhELruoGhPvt6Huz+wz
 GxIQouwxCe7IYtzwJi7D4QKlo4HHnxfvAPuqiVPAJGjkImLqFI59UZqRUPVC9lmf
 ieTlK0NJuE9ghmsdE+gY98fibiHVEFV27qb0Zw8+vNoVVRUzhkUkS3pP1yPFV3g5
 UPSt5f2PzNfWRJ5rKQ6scDyFMdkMLkFdM8ytGTX/9Dm2iGCBQ+78ekw6xScb6iBJ
 SoBRgIEqKqB+fLBLpRVwc9kyiVCNdVhFQJA+2TbandIkxwPu3kkqeBzuNnvTAXQp
 SqdZFGC9ZcfYDJ7gLEP1IQcpNk/+1Up/ta4dJQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1762952165; x=
 1763038565; bh=tJ22zlrlu3Vel3DOJxla0AS5oBx5Wd5Q85qKqPsVN/I=; b=f
 BEfLY+w82VzbPQlTH1tkQRrrikjnQrSY3EDbT4FmBDEjnf2IuX+pSPJAPXRti6N/
 xOiO8pKTX3oQamu2MQeXHVARidGGFWV2BuPqV7r5jugFkpp0ozK8xMhfnFaWKBZt
 JlS4gyLZZ4O+RXNQI0Yaw9/bdmAV+ILhS+eAFA2rHHyyP7giUo9PUhdajwFMcSeS
 RyNZnADfHWCKNveTgROsiOJ2Wc01tkQLlCnw9Xvi444Fkr4nECxoikV2Fr4IJNm8
 3NxbP7n19YdMAfc/AIXIbdtQdmPn1nHwjmWc01lIEeahPFYEJUrVZS8m06RVBS2R
 htvtzrr3+HD7eYluXYAcA==
X-ME-Sender: <xms:5YMUaS7KLYjKjS6zC4PXGmV5s7AOhW3pTl0IxLeuIWwlmr8TeHK9Pg>
 <xme:5YMUaV6HddoEWQLaD9N_myFHJjqSjse5svv6M3CTmsXsKbuw3LK-Bs8xrdaQe2GOx
 ApzsI-qniQJWdGlO4kR7ssI_qLJw7A9LGV4GkuERsmXFz2rVP-kOR5D>
X-ME-Received: <xmr:5YMUaYGljxIojB4wEPENMWOe5WULcQOe_J5pUTklJy4iu5sgXVpLtAndG4S9aCjoMne7GA8cs-OEVezxFLghnaU60mdcyvkw4Us>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggddvtdegudefucetufdoteggodetrf
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
X-ME-Proxy: <xmx:5YMUadVbf0cuIo0bDfwXgTlv9st7c8rk0jQTKk1og6LiRR91aAFsnQ>
 <xmx:5YMUaUXI2r6Ha9PAk-44A57tVWJeYPjaNlpFTptyRTLhUan_Mw9WYA>
 <xmx:5YMUabIjZXtQNkfEvbXEPgmrsS4leMPjpeEUWFMzCd0GmzltQUu2oA>
 <xmx:5YMUacDzVzN3g_98LIKLkszCw6NAjlgJtZOP3a0J2AwFEhosHJ5lvQ>
 <xmx:5YMUadJhfrImORzvmI3OA39mHrKOhUXtNAwxOQFu32H2wpoH0yrrt9rf>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 12 Nov 2025 07:56:03 -0500 (EST)
Date: Wed, 12 Nov 2025 21:56:00 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Marco Crivellari <marco.crivellari@suse.com>
Subject: Re: [PATCH v2] firewire: core: add WQ_UNBOUND to alloc_workqueue users
Message-ID: <20251112125600.GA325192@workstation.local>
Mail-Followup-To: Marco Crivellari <marco.crivellari@suse.com>,
 linux-kernel@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 Tejun Heo <tj@kernel.org>, Lai Jiangshan <jiangshanlai@gmail.com>,
 Frederic Weisbecker <frederic@kernel.org>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Michal Hocko <mhocko@suse.com>
References: <20251112120125.124578-1-marco.crivellari@suse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251112120125.124578-1-marco.crivellari@suse.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Wed, Nov 12, 2025 at 01:01:25PM +0100,
 Marco Crivellari
 wrote: > Currently if a user enqueues a work item using
 schedule_delayed_work()
 the > used wq is "system_wq" (per-cpu wq) while queue_delayed [...] 
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
X-Headers-End: 1vJAOR-00057S-RJ
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

SGksCgpPbiBXZWQsIE5vdiAxMiwgMjAyNSBhdCAwMTowMToyNVBNICswMTAwLCBNYXJjbyBDcml2
ZWxsYXJpIHdyb3RlOgo+IEN1cnJlbnRseSBpZiBhIHVzZXIgZW5xdWV1ZXMgYSB3b3JrIGl0ZW0g
dXNpbmcgc2NoZWR1bGVfZGVsYXllZF93b3JrKCkgdGhlCj4gdXNlZCB3cSBpcyAic3lzdGVtX3dx
IiAocGVyLWNwdSB3cSkgd2hpbGUgcXVldWVfZGVsYXllZF93b3JrKCkgdXNlCj4gV09SS19DUFVf
VU5CT1VORCAodXNlZCB3aGVuIGEgY3B1IGlzIG5vdCBzcGVjaWZpZWQpLiBUaGUgc2FtZSBhcHBs
aWVzIHRvCj4gc2NoZWR1bGVfd29yaygpIHRoYXQgaXMgdXNpbmcgc3lzdGVtX3dxIGFuZCBxdWV1
ZV93b3JrKCksIHRoYXQgbWFrZXMgdXNlCj4gYWdhaW4gb2YgV09SS19DUFVfVU5CT1VORC4KPiBU
aGlzIGxhY2sgb2YgY29uc2lzdGVuY3kgY2Fubm90IGJlIGFkZHJlc3NlZCB3aXRob3V0IHJlZmFj
dG9yaW5nIHRoZSBBUEkuCj4gCj4gYWxsb2Nfd29ya3F1ZXVlKCkgdHJlYXRzIGFsbCBxdWV1ZXMg
YXMgcGVyLUNQVSBieSBkZWZhdWx0LCB3aGlsZSB1bmJvdW5kCj4gd29ya3F1ZXVlcyBtdXN0IG9w
dC1pbiB2aWEgV1FfVU5CT1VORC4KPiAKPiBUaGlzIGRlZmF1bHQgaXMgc3Vib3B0aW1hbDogbW9z
dCB3b3JrbG9hZHMgYmVuZWZpdCBmcm9tIHVuYm91bmQgcXVldWVzLAo+IGFsbG93aW5nIHRoZSBz
Y2hlZHVsZXIgdG8gcGxhY2Ugd29ya2VyIHRocmVhZHMgd2hlcmUgdGhleeKAmXJlIG5lZWRlZCBh
bmQKPiByZWR1Y2luZyBub2lzZSB3aGVuIENQVXMgYXJlIGlzb2xhdGVkLgo+IAo+IFRoaXMgY29u
dGludWVzIHRoZSBlZmZvcnQgdG8gcmVmYWN0b3Igd29ya3F1ZXVlIEFQSXMsIHdoaWNoIGJlZ2Fu
IHdpdGgKPiB0aGUgaW50cm9kdWN0aW9uIG9mIG5ldyB3b3JrcXVldWVzIGFuZCBhIG5ldyBhbGxv
Y193b3JrcXVldWUgZmxhZyBpbjoKPiAKPiBjb21taXQgMTI4ZWE5ZjZjY2ZiICgid29ya3F1ZXVl
OiBBZGQgc3lzdGVtX3BlcmNwdV93cSBhbmQgc3lzdGVtX2RmbF93cSIpCj4gY29tbWl0IDkzMGMy
ZWE1NjZhZiAoIndvcmtxdWV1ZTogQWRkIG5ldyBXUV9QRVJDUFUgZmxhZyIpCj4gCj4gVGhpcyBj
aGFuZ2UgYWRkcyB0aGUgV1FfVU5CT1VORCBmbGFnIHRvIGV4cGxpY2l0bHkgcmVxdWVzdAo+IGFs
bG9jX3dvcmtxdWV1ZSgpIHRvIGJlIHVuYm91bmQsIGJlY2F1c2UgdGhpcyBzcGVjaWZpYyB3b3Jr
bG9hZCBoYXMgbm8KPiBiZW5lZml0IGJlaW5nIHBlci1jcHUuCj4gCj4gV2l0aCB0aGUgaW50cm9k
dWN0aW9uIG9mIHRoZSBXUV9QRVJDUFUgZmxhZyAoZXF1aXZhbGVudCB0byAhV1FfVU5CT1VORCks
Cj4gYW55IGFsbG9jX3dvcmtxdWV1ZSgpIGNhbGxlciB0aGF0IGRvZXNu4oCZdCBleHBsaWNpdGx5
IHNwZWNpZnkgV1FfVU5CT1VORAo+IG11c3Qgbm93IHVzZSBXUV9QRVJDUFUuCj4gCj4gT25jZSBt
aWdyYXRpb24gaXMgY29tcGxldGUsIFdRX1VOQk9VTkQgY2FuIGJlIHJlbW92ZWQgYW5kIHVuYm91
bmQgd2lsbAo+IGJlY29tZSB0aGUgaW1wbGljaXQgZGVmYXVsdC4KPiAKPiBTdWdnZXN0ZWQtYnk6
IFRlanVuIEhlbyA8dGpAa2VybmVsLm9yZz4KPiBTaWduZWQtb2ZmLWJ5OiBNYXJjbyBDcml2ZWxs
YXJpIDxtYXJjby5jcml2ZWxsYXJpQHN1c2UuY29tPgo+IC0tLQo+IENoYW5nZXMgaW4gdjI6Cj4g
LSBUaGlzIHdvcmtsb2FkIGJlbmVmaXQgZnJvbSBhbiB1bmJvdW5kIHdvcmtxdWV1ZS4gU28gY2hh
bmdlIFdRX1BFUkNQVQo+ICAgd2l0aCBXUV9VTkJPVU5EX1dRLgo+IAo+IC0gUmViYXNlZCBvbiA2
LjE4LXJjNQo+IC0tLQo+ICBkcml2ZXJzL2ZpcmV3aXJlL2NvcmUtdHJhbnNhY3Rpb24uYyB8IDMg
KystCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCkFw
cGxpZWQgdG8gZm9yLW5leHQgYnJhbmNoLgoKSSdtIHNvcnJ5IG5vdCB0byByZXBseSB0byB5b3Vy
IHByZXZpb3VzIHBvc3Qgc2luY2UgaXQgZGlkIG5vdCByZWFjaCBteQptYWlsIGJveC4uLiBZb3Vy
IHYyIHBhdGNoIGlzIGEgZ29vZCByZW1pbmRlciA7KQoKClRoYW5rcwoKVGFrYXNoaSBTYWthbW90
bwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm1haWxp
bmcgbGlzdCBsaW51eDEzOTQtZGV2ZWxAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlz
dHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2xpbnV4MTM5NC1kZXZlbAo=
