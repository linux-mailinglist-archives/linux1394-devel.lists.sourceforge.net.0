Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 56CF5AECB1B
	for <lists+linux1394-devel@lfdr.de>; Sun, 29 Jun 2025 04:49:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=seL79voGkLJI1hfk/mLFgdjPjnYBK3BHu4p+BMpOrLE=; b=acIqDE1hWmCbPYmh7pSsu/8aCh
	F2yM63W4wRSTUNv5ZQYLBgXIX9uQwSNchAAYaLedeoa+N1fuQc+GIqMgCs66+lK4D14jPLIvb4tdR
	w/E9l8+G80j9B+9UbSdzJcWhxNVys1GbdhyeZqhBB8gkOnzPippp6ZPmbtSvMqpB+MPY=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uVi6A-00059x-Ge;
	Sun, 29 Jun 2025 02:48:54 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uVi69-00059m-49
 for linux1394-devel@lists.sourceforge.net;
 Sun, 29 Jun 2025 02:48:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wcRZxmpBdHICglbzBO3O/bjffUyE8Jd0/tfZEbUwOE4=; b=JoKzrX9jSFZj0WyWdCoKJ3vitM
 vyIQYGlVuAcPY/oXXG2oR0Hlc4UTmQxuzO8KS1VZ2HMINmVC5A0LYJNCd/dU9CAaCbk4FBxggOw1f
 p+mNftq29wpQE7DOD1A9X+xFEPVJVORe/vOCj60LeX+z/6IPz/Gez1B9KsomvpzlnQa8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wcRZxmpBdHICglbzBO3O/bjffUyE8Jd0/tfZEbUwOE4=; b=W3lhPBgx+y/rnFUOtGrWraxgY4
 8t2klK5tyVjCwI4AXe5J2X4fgA0BGssIdtCZMHfcw5HUOAPju4uyBfChH8nJR5nAGOhmdKqmoQWhf
 6vGoVW/n1R+0XEg1BMgojUDM6uLndJrGrhRqiXMOmD4V7miL5XQjUvRdvNUgyLMHvKGo=;
Received: from fhigh-b8-smtp.messagingengine.com ([202.12.124.159])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uVi67-00032c-UO for linux1394-devel@lists.sourceforge.net;
 Sun, 29 Jun 2025 02:48:53 +0000
Received: from phl-compute-12.internal (phl-compute-12.phl.internal
 [10.202.2.52])
 by mailfhigh.stl.internal (Postfix) with ESMTP id C91FF7A00D3;
 Sat, 28 Jun 2025 22:48:40 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-12.internal (MEProxy); Sat, 28 Jun 2025 22:48:40 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:content-type
 :date:date:from:from:in-reply-to:in-reply-to:message-id
 :mime-version:references:reply-to:subject:subject:to:to; s=fm2;
 t=1751165320; x=1751251720; bh=wcRZxmpBdHICglbzBO3O/bjffUyE8Jd0
 /tfZEbUwOE4=; b=enC6QhurasrSzmJZjBQRdaDs9Vf5HllCWonv9RrcO94mJe0P
 3iyecCZ/NkuHBvn38wKESE9BwYfdtdKUevXvIZ9WtReez3lTrg8ohFlhaO4vdOBG
 v+spxdcmAgUUl9lBWe679nCscqURVYjfpiMBwDcSvyuwyx72InNBkqF7TcDqGwXN
 9dOUst6bMDODi//0rAbeTJnlBmMsePmTikfLwp73len+bljeRSS4NlDhQ2Gaor38
 b66h7sUnV+s7ysLoJl2nZbbVQxXl3EtQcw4TPH+XrGgbGoN7z2Q4XzELzchsNzsX
 LOQyLp0udFhXu1QDVo/vxB6q2Reoet7C5HGbKQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1751165320; x=
 1751251720; bh=wcRZxmpBdHICglbzBO3O/bjffUyE8Jd0/tfZEbUwOE4=; b=T
 VnX2TsKKldnX/ibuyZEfFEOn17WeLZj5A1shym5h4c/oznJxScWLxNbJThOHBXhs
 BmK+CV1Gcd31I/X/vUSi9//AZv5mUJmzst7gWUI6Bpoad7ok+k5IOwCfFcdLl530
 ymfhAEpzIjY5+rfzlfTfZO7ZD2esfduvPDv7Bz3E9HB76ey46gs1XJrd7R+8uxaE
 /NVx8huDgPYPFrcpMaVeIgOHSGMU0cMguJXkZr7J0saG5VgNpP0oa5U3Yq3yf0l6
 xfwB4YW1evGrueOdwulmDiuKvBR8bLorsCXDfexkOfIOC7d3nP7EpzkrSHiZ51Mv
 vmZIowJm22t+xDFeE2lWA==
X-ME-Sender: <xms:iKlgaLntnjSrfFpyTKQqEx00Fd8O5ZZBSBVu6JfA-DVH54gNSt-6FQ>
 <xme:iKlgaO2JwQ0KBWM6dJMB0VUulQkeNlLBpPllxp2pjedAJT4ITUBmESWHpfdKBT9ZM
 xj8VClD6nkAVzuWqNw>
X-ME-Received: <xmr:iKlgaBoAL2Fnr3O7wPhA8WEQM1zByju-M6PgfBi5GniDCEjRTxMBcNoHnhcVx-hRzUiy5XEpbBlOTyPg1H-lPPAlynGrQX9S_LBF>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdefgdejieeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucgoufhushhpvggtthffohhmrghinhculdegledmnecujfgurh
 epfffhvfevuffkfhggtggugfgjsehtkeertddttdejnecuhfhrohhmpefvrghkrghshhhi
 ucfurghkrghmohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhpqe
 enucggtffrrghtthgvrhhnpeetgfegleegveeivdegieehvedukeduheegudeluedutdet
 heethfffiedtieehgeenucffohhmrghinhepshhouhhrtggvfhhorhhgvgdrnhgvthdpgh
 hithhhuhgsrdgtohhmnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghi
 lhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjphdpnhgspghrtg
 hpthhtohepvddpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepnhhoshhprghmsehk
 ohhtrgdrmhhovgdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlsehlihhsth
 hsrdhsohhurhgtvghfohhrghgvrdhnvght
X-ME-Proxy: <xmx:iKlgaDnT9YPuceBH9EvRJoMlRS8mIVd9GqMA2xNaqJs9pQnY5DW4pQ>
 <xmx:iKlgaJ3pP27CiQUkgLDAyzZxe99EeUAoVYgJTJlsyvqOtNZjCWKKXw>
 <xmx:iKlgaCsivGDntsHEiggs_ET_dQ8JTGm_I53E_xv9vfMJafZe1iNm5g>
 <xmx:iKlgaNW_DnPPVSFznXeuDaXwcVdQfaXD0r6IIqEyzV_9gmbyEXEhcA>
 <xmx:iKlgaMt1Wlw5b5mNQFbZz70Z9T_WdXpf6_Q52PE7_pnEE2qIrUx38xGB>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 28 Jun 2025 22:48:38 -0400 (EDT)
Date: Sun, 29 Jun 2025 11:48:36 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: =?utf-8?B?4oCN5bCP5aSq?= <nospam@kota.moe>
Subject: Re: Fwd: Adding timeouts to device access?
Message-ID: <20250629024836.GA16759@workstation.local>
Mail-Followup-To: =?utf-8?B?4oCN5bCP5aSq?= <nospam@kota.moe>,
 linux1394-devel@lists.sourceforge.net
References: <CACsxjPaHOUFB_p64ze49NazAmdiJg7frL2pAjQyUmvheZssJCA@mail.gmail.com>
 <CACsxjPZcUbe2ZwyWqLq_hVHzahJrn9v0fXSLKAccgwADH5v6SQ@mail.gmail.com>
 <CACsxjPbD4H=GUqkK8JhwithvZybrfokduEC+wnozn_awdHyOSg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACsxjPbD4H=GUqkK8JhwithvZybrfokduEC+wnozn_awdHyOSg@mail.gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "sfi-spamd-2.hosts.colo.sdot.me",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, I'm sorry to be late for reply, however I was traveling.
    On Mon, Jun 23, 2025 at 05:53:47PM +1000, ‍小太 wrote: > Hello, I tried
    sending an email (see below) to > linux1394-devel@lists.sourceforge.net a
    few days ago but it hasn't showed > up on the arch [...] 
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to DNSWL
                             was blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#DnsBlocklists-dnsbl-block
                              for more information.
                             [202.12.124.159 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
X-Headers-End: 1uVi67-00032c-UO
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

SGksCgpJJ20gc29ycnkgdG8gYmUgbGF0ZSBmb3IgcmVwbHksIGhvd2V2ZXIgSSB3YXMgdHJhdmVs
aW5nLgoKT24gTW9uLCBKdW4gMjMsIDIwMjUgYXQgMDU6NTM6NDdQTSArMTAwMCwg4oCN5bCP5aSq
IHdyb3RlOgo+IEhlbGxvLCBJIHRyaWVkIHNlbmRpbmcgYW4gZW1haWwgKHNlZSBiZWxvdykgdG8K
PiBsaW51eDEzOTQtZGV2ZWxAbGlzdHMuc291cmNlZm9yZ2UubmV0IGEgZmV3IGRheXMgYWdvIGJ1
dCBpdCBoYXNuJ3Qgc2hvd2VkCj4gdXAgb24gdGhlIGFyY2hpdmU6Cj4gaHR0cHM6Ly9zb3VyY2Vm
b3JnZS5uZXQvcC9saW51eDEzOTQvbWFpbG1hbi9saW51eDEzOTQtZGV2ZWwvP3ZpZXdtb250aD0y
MDI1MDYKPiBJcyBpdCBhd2FpdGluZyBtb2RlcmF0aW9uIG9yIGdvdCBkcm9wcGVkIGFzIHNwYW0/
IERpZCBJIHNlbmQgaXQgd3Jvbmc/CgpUaGUgbW9kZXJhdGlvbiBvZiBsaXN0IGlzIGtpbmQgb2Yg
b3V0c2lkZSB3aGF0IEkgdXN1YWxseSBkZWFsIHdpdGgsCnVuZm9ybnR1bmF0ZWx5LiBBZGRpdGlv
bmFsbHksIHRoZSBtb2RlcmF0b3JzIG9mIGxpc3QgaXMgaW5hY3RpdmUgc28gbG9uZy4KCj4gLS0t
LS0tLS0tLSBGb3J3YXJkZWQgbWVzc2FnZSAtLS0tLS0tLS0KPiBGcm9tOiDigI3lsI/lpKogPG5v
c3BhbUBrb3RhLm1vZT4KPiBEYXRlOiBGcmksIDIwIEp1biAyMDI1IGF0IDE5OjIzCj4gU3ViamVj
dDogUmU6IEFkZGluZyB0aW1lb3V0cyB0byBkZXZpY2UgYWNjZXNzPwo+IFRvOiA8bGludXgxMzk0
LWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldD4KPiAKPiAKPiBPbiBGcmksIDIwIEp1biAyMDI1
IGF0IDE5OjE3LCDigI3lsI/lpKogPG5vc3BhbUBrb3RhLm1vZT4gd3JvdGU6Cj4gCj4gPiBIZWxs
bywgSSd2ZSBiZWVuIHRyeWluZyB0byBkZWJ1ZyBhbiBvZGQgaXNzdWUgd2l0aCBteSBoYXJkd2Fy
ZSB3aGVyZSBpdAo+ID4gc29tZXRpbWVzIGp1c3Qgc3RvcHMgcmVzcG9uZGluZyAoaGFyZHdhcmUg
ZmFpbHVyZSBpcyBteSBndWVzcyBhdCB0aGUKPiA+IG1vbWVudCkuCj4gPiBUaGlzIHJlc3VsdGVk
IGluIGh1bmcgdGFza3MgaW4gdGhlIGtlcm5lbCB0aGF0IHNvbWV0aW1lcyBldmVuIHByZXZlbnRz
IHRoZQo+ID4gT1MgZnJvbSBjbGVhbmx5IHNodXR0aW5nIGRvd24KPiA+Cj4gPiBJbiBwYXJ0aWN1
bGFyLCBJIGJlbGlldmUgdGhlc2UgbGluZXMgYXJlIHByb25lIHRvIGhhbmdpbmcgaW5kZWZpbml0
ZWx5IGluCj4gPiB0aGUgZXZlbnQgdGhlIGhhcmR3YXJlIGZhaWxzIHRvIHJlc3BvbmQ6Cj4gPiAg
LQo+ID4gaHR0cHM6Ly9naXRodWIuY29tL3RvcnZhbGRzL2xpbnV4L2Jsb2IvNzVmNWYyM2Y4Nzg3
YzVlMTg0ZmNiMmZiY2QwMmQ4ZTkzMTdkYzVlNy9kcml2ZXJzL2ZpcmV3aXJlL2NvcmUtY2FyZC5j
I0w3NTMKPiA+ICAtCj4gPiBodHRwczovL2dpdGh1Yi5jb20vdG9ydmFsZHMvbGludXgvYmxvYi83
NWY1ZjIzZjg3ODdjNWUxODRmY2IyZmJjZDAyZDhlOTMxN2RjNWU3L2RyaXZlcnMvZmlyZXdpcmUv
Y29yZS10cmFuc2FjdGlvbi5jI0w0MzMKPiA+Cj4gPiBXb3VsZCBpdCBtYWtlIHNlbnNlIHRvIHR1
cm4gdGhlc2UgaW50byB3YWl0X2Zvcl9jb21wbGV0aW9uX3RpbWVvdXQoKSBvcgo+ID4gZXZlbiB3
YWl0X2Zvcl9jb21wbGV0aW9uX2ludGVycnVwdGlibGVfdGltZW91dCgpIGluc3RlYWQ/Cj4gPiBJ
ZiBzbywgc29tZSBxdWVzdGlvbnM6Cj4gPiAgLSBXaGF0IHdvdWxkIGJlIGEgcmVhc29uYWJsZSB0
aW1lb3V0IHZhbHVlPyAxIHNlY29uZD8gTGVzcz8KPiA+ICAtIElmIGZ3X3J1bl90cmFuc2FjdGlv
bigpIHRpbWVzIG91dCwgd2hhdCBzaG91bGQgaXQKPiA+IHJldHVybj8gUkNPREVfQ0FOQ0VMTEVE
Pwo+ID4KPiAKPiBXaG9vcHMsIEkgd2FzIG1lYW50IHRvIGluY2x1ZGUgdGhlIGh1bmcgdGFzayBs
b2dzIGJ1dCBmb3Jnb3QuIEhlcmUgdGhleSBhcmUKPgo+IChTbmlwKQoKV291bGQgSSBhc2sgeW91
IHRoZSBzaXR1YXRpb24gZmFjaW5nIHRoZSBpc3N1ZT8gRXNwZWNpYWxseSwgd2hhdCBraW5kIG9m
CjEzOTQgT0hDSSBoYXJkd2FyZSB5b3UgdXNlZC4KCgpUaGFua3MKClRha2FzaGkgU2FrYW1vdG8K
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwptYWlsaW5n
IGxpc3QgbGludXgxMzk0LWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3Rz
LnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9saW51eDEzOTQtZGV2ZWwK
