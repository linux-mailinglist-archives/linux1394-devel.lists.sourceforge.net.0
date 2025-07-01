Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D752BAF06A9
	for <lists+linux1394-devel@lfdr.de>; Wed,  2 Jul 2025 00:44:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PcFIXGrAI9pgBKCsm4LS0jnqOC3S7ptAua2ulOs5AzI=; b=E+DMoyC7Y2tsT5mQaFj2lmG/WJ
	NI481XVw8zMeC/b1SnATpmn35Tdlkn+oTCkn6Q9KGqxsf9ZV6ZNN7AUt+VswvLbO3flxovKddyxBL
	8NPh97udG5wsUBCMEzq1p/xyeqhm+yaK39MQ7t/+2EWyU1iG6pib/BfrfbTo6TzDWQis=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uWjiW-0002Ic-TQ;
	Tue, 01 Jul 2025 22:44:44 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uWjiV-0002IK-HI
 for linux1394-devel@lists.sourceforge.net;
 Tue, 01 Jul 2025 22:44:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uwVjwIqHpiJ9pI7pXno5E8LQKAb10qAy7g1zrv3tJHM=; b=KWLcawvQKiFQKX+b7O/gxma4Kc
 rnrSoP/YRsz2Wn/qYJQJ81R6intlLAVAJcR71sU+9XuynEIhmO1VNiyfUVnz6sD/81xD8uStgu1Iy
 /KjNnH1WDJGiL8VDPdX3+EsRKhOdp3d/MqfS6HY4E7HPHbflvmUk3oS1ujWJ6GUXU74A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uwVjwIqHpiJ9pI7pXno5E8LQKAb10qAy7g1zrv3tJHM=; b=fo0h85Q1eu6EOPVMRCMacjbu73
 qN7QQhDcX/6WkBhx62GdS+ONFMhPmX6xWIBmP6ffA2gE2iOGSqjDAAXJN/eOhQ9p0CbZOHU3HJFhE
 tcsabGjz+S9O4x2OYkgiJJV/aJdQn/eCS+tkqAolN7/iAQBC8PfLtolnKisA/QG/SLew=;
Received: from fhigh-a6-smtp.messagingengine.com ([103.168.172.157])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uWjiU-0007mB-FG for linux1394-devel@lists.sourceforge.net;
 Tue, 01 Jul 2025 22:44:43 +0000
Received: from phl-compute-01.internal (phl-compute-01.phl.internal
 [10.202.2.41])
 by mailfhigh.phl.internal (Postfix) with ESMTP id C9DA81400258;
 Tue,  1 Jul 2025 18:44:31 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-01.internal (MEProxy); Tue, 01 Jul 2025 18:44:31 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:content-type
 :date:date:from:from:in-reply-to:in-reply-to:message-id
 :mime-version:references:reply-to:subject:subject:to:to; s=fm2;
 t=1751409871; x=1751496271; bh=uwVjwIqHpiJ9pI7pXno5E8LQKAb10qAy
 7g1zrv3tJHM=; b=GfCn9Yv4/bkzS9EBqTn2Cmu4WVqxpZwEFQ9ARUGoQpWFJbcI
 FVOxxqhqDAfm0414PPPGZi3zdW1pWheMYZBlBh058VZtIwTn5j7SqmfesK3FYwDv
 fMlDdUZwRfTeRHSbbLo3c+TtOKObrWnjtG99RazSgOLR17G3C6AdW48OP94iQ/R0
 cqatZW5R32aapJIOFAENt/6AQjtPjuse8zGknxDC1QSO/5gp87vSGK5qJTnLPIDN
 BFr/rPMgflTs1e2rUGQshXwRIbKew+KHPzKJHpJLOLx3+55eUZ6yGajQB2NQ3pCu
 glVduOC6ZmGCgc5GJtUED+2Ll7j5jUBRPYFtZw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1751409871; x=
 1751496271; bh=uwVjwIqHpiJ9pI7pXno5E8LQKAb10qAy7g1zrv3tJHM=; b=e
 DqBNBfVlKwRumYmINgYO7tgwU519jpO2NNTLlECQCx4U/WMPg/ZrCGZPah60Rabz
 w3CW7ZI8lxffW43dvduKkOcAqXHDVHfPOjZPEJ/eUl32xMmhQL3bZfJ5K9jK42Gj
 x8JLNQ4/TNpfEqKK5PLR40Eh1Sz1Bu85yrv+VPPt4djTM/L1Dq8gPWAyDzx1yIWW
 /cTgCb/Vlj+pnEYEcj2Ct7o1mqDsWCLqy9nEZkfDHnsT6aujqweNnPiSwCtgGEPs
 OT+51LUiZSqDbFUiCtYdT5RqGGdHkTtmIx6GNTcnd6OgGE6ks84PXMR55Be7XirC
 Zdx+JWW0UgW5Mrj1IeRig==
X-ME-Sender: <xms:z2RkaEAMGXb3cNHt5d2P18NkXeUX4is54334Vtv_uf5kvkVvJO7dmg>
 <xme:z2RkaGjTodxuNxdSYaGIXqNzpAmn33mBu52PApGaKayVtKEAp6FBlq0QbZGrkUiw8
 _p0feXmZb7pHz1ZbHQ>
X-ME-Received: <xmr:z2RkaHnLFmAfHc4Z2JFRgQIY7bVc01kPOm5xPXkkevx78ux5tAvTWtXktkci6e_9UYtHhxPctbqNPgTEKC8wquatsQtgYr03fuk>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdefgdduheejhecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecunecujfgurhepfffhvfevuffkfhggtggugfgjsehtkeertd
 dttdejnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeetveffieffhf
 ekteevudeggeeuffdvheekjeefudekteefhfdtffdvgeejjedvleenucffohhmrghinhep
 khgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrg
 hilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjphdpnhgspghr
 tghpthhtohepvddpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepnhhoshhprghmse
 hkohhtrgdrmhhovgdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlsehlihhs
 thhsrdhsohhurhgtvghfohhrghgvrdhnvght
X-ME-Proxy: <xmx:z2RkaKzE8ipolqUL67XMC23ChNT6a-79ixxvdMTjcVt8qtYiX01qwg>
 <xmx:z2RkaJQJ5BgoYfsQgK3qsPxGtnEyMXwJSesOE81yoHMKFIOvd_9QDg>
 <xmx:z2RkaFaoCSc1oSK61sQiFzRRWjDS0ucWhvrHdZdCd2d_HgajEkC71g>
 <xmx:z2RkaCSCP4Ir9cf_nAQigAh-mxxTpelb1l82MTPHShJtFUVb2aWXwA>
 <xmx:z2RkaCo4bnr0RLOIPaOwmyl62ZkyRSoyijWYoO0x8dqnjI2UW0R77b_I>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 1 Jul 2025 18:44:30 -0400 (EDT)
Date: Wed, 2 Jul 2025 07:44:27 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: =?utf-8?B?4oCN5bCP5aSq?= <nospam@kota.moe>
Subject: Re: Fwd: Adding timeouts to device access?
Message-ID: <20250701224427.GA141653@workstation.local>
Mail-Followup-To: =?utf-8?B?4oCN5bCP5aSq?= <nospam@kota.moe>,
 linux1394-devel@lists.sourceforge.net
References: <CACsxjPaHOUFB_p64ze49NazAmdiJg7frL2pAjQyUmvheZssJCA@mail.gmail.com>
 <CACsxjPZcUbe2ZwyWqLq_hVHzahJrn9v0fXSLKAccgwADH5v6SQ@mail.gmail.com>
 <CACsxjPbD4H=GUqkK8JhwithvZybrfokduEC+wnozn_awdHyOSg@mail.gmail.com>
 <20250629024836.GA16759@workstation.local>
 <CACsxjPY-Tw=W5X-YR340wKiMNJZHh=dE+Kkys4+7=vsd-=LQ+Q@mail.gmail.com>
 <20250629140119.GA93828@workstation.local>
 <CACsxjPbUy5+ztef4qUg+XW3+j7su2Nzhermrdm7up+g-rz4wHQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACsxjPbUy5+ztef4qUg+XW3+j7su2Nzhermrdm7up+g-rz4wHQ@mail.gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "sfi-spamd-2.hosts.colo.sdot.me",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, On Mon, Jun 30, 2025 at 12:10:15AM +1000, ‍小太 wrote:
    > On Mon, 30 Jun 2025 at 00:01, Takashi Sakamoto <o-takashi@sakamocchi.jp>
    > wrote: > > > > > Two kernel messages are in your first post. The [...] 
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
X-Headers-End: 1uWjiU-0007mB-FG
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

SGksCgpPbiBNb24sIEp1biAzMCwgMjAyNSBhdCAxMjoxMDoxNUFNICsxMDAwLCDigI3lsI/lpKog
d3JvdGU6Cj4gT24gTW9uLCAzMCBKdW4gMjAyNSBhdCAwMDowMSwgVGFrYXNoaSBTYWthbW90byA8
by10YWthc2hpQHNha2Ftb2NjaGkuanA+Cj4gd3JvdGU6Cj4gCj4gPgo+ID4gVHdvIGtlcm5lbCBt
ZXNzYWdlcyBhcmUgaW4geW91ciBmaXJzdCBwb3N0LiBUaGUgZmlyc3Qgb25lIHJlY29yZHMgdGhh
dAo+ID4gdGhlIHN5c3RlbSBkb2VzIG5vdCBleGVjdXRlIGludGVycnVwdCBzZXJ2aWNlIHJvdXRp
bmUgZm9yIGhhcmRJUlEgd2hpY2gKPiA+IHNob3VsZCBiZSB0cmlnZ2VyZWQgYWdhaW5zdCBhbnkg
Y29tbWFuZCByZXF1ZXN0IHRvIHRyYW5zZmVyIGFzeW5jaHJvbm91cwo+ID4gcGFja2V0Cj4gPiB3
aGVuIHJldHJpZXZpbmcgdGhlIGRldGVjdGVkIG5vZGUgZGV2aWNlLiBUaGUgc2Vjb25kIG9uZSBy
ZWNvcmRzIHRoYXQgdGhlCj4gPiByZWZlcmVuY2UgY291bnQgb2YgZndfY2FyZCBpbnN0YW5jZSBj
b3VsZCBub3QgcmVhY2ggemVybyBldmVuIGlmIHdhaXRpbmcgc28KPiA+IGxvbmcgd2hlbiBtb2Rw
cm9iZSg4KSBleGVjdXRlcyB0aGUgZGVsZXRlX21vZHVsZSBzeXN0ZW0gY2FsbC4KPiA+Cj4gCj4g
V291bGQgaXQgbWFrZSBzZW5zZSB0byBjb252ZXJ0IHRoZSB3YWl0X2Zvcl9jb21wbGV0aW9uKCkK
PiB0byB3YWl0X2Zvcl9jb21wbGV0aW9uX3RpbWVvdXQoKSBpbiBlaXRoZXIgY2FzZT8KPiBQb3Rl
bnRpYWxseSBjb3VsZCBsZWFrIGEgcmVmZXJlbmNlIGNvdW50LCBidXQgaXQncyBiZXR0ZXIgdGhh
biBhIGh1bmcgdGFzawo+IHRoYXQgcHJldmVudHMgc3lzdGVtIHNodXRkb3duLi4uCj4gCj4gCj4g
Pgo+ID4gSSBndWVzcyB0aGUgY2F1c2Ugb2YgbGF0ZXIgbWVzc2FnZSBpcyB0aGUgbG9zdCBvZiBo
YXJkSVJRIGluIHRoZSBmaXJzdAo+ID4gbWVzc2FnZSwgaG93ZXZlciwgSSB3b3VsZCBsaWtlIHlv
dSB0byBjb21wYXJlIHRpbWVzdGFtcHMgZm9yIHRoZXNlCj4gPiBtZXNzYWdlcy4KPiAKPiAKPiBJ
SVJDIHRoZSB0d28gYmFja3RyYWNlcyBjYW1lIGZyb20gdHdvIGNvbXBsZXRlbHkgZGlmZmVyZW50
IGJvb3RzIG9mIHRoZQo+IGtlcm5lbCB3aXRoIGRpZmZlcmVudCBmYWlsdXJlIHN5bXB0b21zLgo+
IFNvIHByb2JhYmx5IHVucmVsYXRlZCB0byBlYWNoIG90aGVyIChleGNlcHQgZm9yIHRoZSBub24t
cmVzcG9uc2l2ZSBoYXJkd2FyZSkKCkhtLCB0aGVzZSBhcmUgaW5kZXBlbmRlbnQuLi4KCklmIHRo
YXQncyB0aGUgY2FzZSwgdGhlIGlzc3VlIG1pZ2h0IGJlIHBhcnRseSBkdWUgdG8gaG93IHRoZSB1
c2Vyc3BhY2UKYXBwbGljYXRpb24gaXMgd3JpdHRlbi4gVHlwaWNhbGx5LCBpdCBpcyB3cml0dGVu
IG5vdCB0byBjYWxsIGNsb3NlKDIpIHRvCnRoZSBmaWxlIGRlc2NyaXB0b3Igb2YgRmlyZVdpcmUg
Y2hhcmFjdGVyIGRldmljZSBldmVuIGlmIGVpdGhlciBhbnkKb3BlcmF0aW9ucyB0byBpdCByZXR1
cm5zIC1FTk9ERVYgb3IgaXQgbmV2ZXIgcmVjZWl2ZXMgdGhlIHJlc3BvbnNlIG9mCmFzeW5jaHJv
bm91cyB0cmFuc2FjdGlvbi4KClRoZSByZXBsYWNlbWVudCBieSB0aGUga2VybmVsIEFQSSB0byB3
YWl0IGZvciBhbnkgZXZlbnQgd2l0aCB0aW1lb3V0IGlzCmEgc2ltcGxlIHNvbHV0aW9uLCBpZiB3
ZSBjYW4gaWdub3JlIHRoZSBhcHBhcmVudCBsZWFrIG9mIHN5c3RlbSByZXNvdXJjZXMuCkluZGVl
ZCwgaXQgaXMgbm90IHByZWZlcmFibGUsIHlvdSBrbm93LgoKSSB0aGluayB3aGF0IHdlIHNob3Vs
ZCBkbyBub3cgaXMgdG8gaWRlbnRpZnkvZXN0aW1hdGUgdGhlIGNhdXNlIG9mCnRoZSBpc3N1ZSwg
ZXNwZWNpYWxseSBmb3IgdGhlIGluY29tcGxldGUgdHJhbnNhY3Rpb24uIEF0IHByZXNlbnQsIHRo
ZQp0cmFuc2FjdGlvbiBzZXJ2aWNlIG9mIExpbnV4IGtlcm5lbCByZWxpZXMgb24gdGhlIGNvcnJl
c3BvbmRpbmcKZnVuY3Rpb25hbGl0eSBvbiAxMzk0IE9IQ0kgaGFyZHdhcmUuIFdlIGFzc3VtZSB0
aGF0IHRoZSBoYXJkd2FyZQpub3RpZmllcyB0aGUgY29tcGxldGlvbiBvZiB0cmFuc2FjdGlvbiAo
aW5jbHVkaW5nIGJvdGggdHJhbnNtaXNzaW9uCmVycm9ycyBhbmQgdGltZW91dCkgYnkgdHJpZ2dl
cmluZyBJUlEgKHByZWNpc2VseSB0aGUgY29ycmVzcG9uZGluZwpzb2Z0d2FyZSBkcml2ZXIgb3Bl
cmF0ZXMgdGhlIGhhcmR3YXJlIHRvIHdvcmsgc28pLgoKSWYgd2UgbmVlZCBhbnkgc29mdHdhcmUg
dGltZW91dCB0byBmaW5pc2ggdGhlIHRyYW5zYWN0aW9uLCBpdCBtZWFucyB0aGF0CnRoZSBjb21i
aW5hdGlvbiBvZiBoYXJkd2FyZSAoSSBtZWFuIHRoZSAxMzk0IE9IQ0kgaGFyZHdhcmUsIEFNRCBQ
Q0llIFJvb3QKQ29tcGxleCwgQU1EIElPIEh1YiwgYW5kIHNvIG9uKSBpcyBlbm91Z2ggbGF6eSBp
biB0aGUgcG9pbnQuIEZvcgpleGFtcGxlLCBJIGtub3cgYW4gaXNzdWUgcmVsYXRlZCB0byB0aGUg
Y3JpdGljYWwgcXVpcmsgb2YgUENJZSBBTUQgUnl6ZW4KUENJZSBmdW5jdGlvbmFsaXR5IGFuZCB0
aGUgZXh0ZW50aW9uIGNhcmQgd2l0aCBBU00xMDh4L1ZUNjMweC4gQU1EIFJ5emVuCm1hY2hpbmUg
aGFzIGEgY29uY2VybiB0byBoYW5kbGUgb2xkIGhhcmR3YXJlLiBJIGd1ZXNzIHRoYXQgeW91ciBp
c3N1ZSBpcwpzaW1pbGFyIHRvIHRoaXMga2luZCBvZiBpc3N1ZSwgc29tZWhvdy4KClsxXSBodHRw
czovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51
eC5naXQvY29tbWl0L2RyaXZlcnMvZmlyZXdpcmUvb2hjaS5jP2lkPWFjOTE4NGZiYjg0NwoKClJl
Z2FyZHMKClRha2FzaGkgU2FrYW1vdG8KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwptYWlsaW5nIGxpc3QgbGludXgxMzk0LWRldmVsQGxpc3RzLnNvdXJj
ZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9s
aW51eDEzOTQtZGV2ZWwK
