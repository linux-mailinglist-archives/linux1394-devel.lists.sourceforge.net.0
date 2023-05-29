Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F8E0715205
	for <lists+linux1394-devel@lfdr.de>; Tue, 30 May 2023 00:46:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1q3lcl-0000X7-6J;
	Mon, 29 May 2023 22:46:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1q3lcj-0000Wy-5R
 for linux1394-devel@lists.sourceforge.net;
 Mon, 29 May 2023 22:45:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bgUG0LgYa+nh+rJ4ie+IkG0Q0XRNLEsbQrNkQi4S5Fo=; b=Y29CNY+RqROUdlwWs/TAxLRabw
 hyDJvL4/0QSF/5ozjkuq8CCq1e8SzZQTT4k7DXE9KzRIMC24Alyo4oWqCpimQ7cU1oladpLzf8iA0
 uV5cgHMS7Z28iUkZ4ob47sZrMXESMjMD7EevKHw/8SfLG+UfWTjDztyEHP/2ttxTrUh0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bgUG0LgYa+nh+rJ4ie+IkG0Q0XRNLEsbQrNkQi4S5Fo=; b=SJPMq4lyYl8ylzAAibktLAH/xn
 w5Mg7oJQ/tyGNV+neawaVsPqI0ZLesWtofBcvxyD1/gwuem6NTrj/pQMToXgAoRjWKAzhv8Ra/h+8
 jBPPojnFdIt/vfmL2LcnNMuaX6XqrVhc45PGvAlP2DEZ2KKR1REQyXqsP88di2KNpQmE=;
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q3lch-00031N-R3 for linux1394-devel@lists.sourceforge.net;
 Mon, 29 May 2023 22:45:57 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailout.nyi.internal (Postfix) with ESMTP id 2D7B05C007D;
 Mon, 29 May 2023 18:45:50 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Mon, 29 May 2023 18:45:50 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:content-type
 :date:date:from:from:in-reply-to:in-reply-to:message-id
 :mime-version:references:reply-to:sender:subject:subject:to:to;
 s=fm1; t=1685400350; x=1685486750; bh=bgUG0LgYa+nh+rJ4ie+IkG0Q0
 XRNLEsbQrNkQi4S5Fo=; b=ddLQxpXTJmdfbY0O8E4Tmy+qs8Orc4cxwMmYMbghr
 Coy5CGunqgA/jgfnfdKES+ofnIeQ7YEFS7Yx/W4jGFpG83lG6GTiBmc7pb31STso
 dd3mF9VJ17HzUarq5aII/xMMs05R2spM2LHpnjLr7hNchO+84dnW7xKn4/WVxZtS
 hmwazfByLtsV0rga1R7JVd2o0lJZ3X/EHO6Xa3FIX3707x47qzAIugBvGqpXtnqX
 AhVxEgQgjT7dSJaLYFV3Lqlw5zsWaz41igkrg1sURFH9cLbsm8w5D083PacYmEk5
 euP1ey/ppOniFyXcChvvgAT2pdWNT43syrNkNyh4izP5g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:sender:subject:subject:to:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1685400350; x=1685486750; bh=bgUG0LgYa+nh+rJ4ie+IkG0Q0XRNLEsbQrN
 kQi4S5Fo=; b=m02MiaP6vAxok/Lty6E/V6DYMW+CyjvuBA6mpiHVkl4phqzCfyN
 At1JCcjKlEcrGJAUJYMDOc+5f7/p71ycWh60Ycw7HNRCPZlU9+/30/CX5b4kJojh
 6bVr9CXui/DhoHQLJ+Y3mH7QtSd0t5LaTYo7vuEQGKY/TfjzBFeYjk+ZjUzY0IkZ
 qxUvxX54b2u/wmW2ZEAOIplN5ZzPucPcmztvpOnjctNX6qGuaRKlZWD9II/vZk1g
 w9IKbq2R/Iu87Z4RaoKV/wQZtpw8/5FS7ZiCle/4QqIOReewQuISSlf7Djeb7fEb
 wyz+TDe/Eow5xkklxQeF/FM9tHZf2q3IqyQ==
X-ME-Sender: <xms:HSt1ZFCyn9izx8vsp_Vc1U7mY-q0KGKV65h-NxuD9UO5whK0PSEkNA>
 <xme:HSt1ZDjo6L9ZnrPjCxKZw1GVkdlPFPCdz4SsG2RkQe20tnJY_FnxMiQK7W3YHurNi
 45lBCORR_iIVHf0bS4>
X-ME-Received: <xmr:HSt1ZAmIzZG-HN2zJCEcnP58H3MDBDoYY3KHbbYdqLjIkQeXusO4x807VdI8qt3cu3Gp5hJ8w0RyCggqd1fjSKlrNaaCgZo7x-8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfeekiedgudegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfhfgggtugfgjgesth
 ekredttddtjeenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgr
 khgrshhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnheptedthe
 egtdfgfffggeehhefgtdefueelteelfeduudeludeggfelffegfeeiudejnecuffhomhgr
 ihhnpehgihhthhhusgdrtghomhdpghhnuhdrohhrghdpkhgvrhhnvghlrdhorhhgnecuve
 hluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:HSt1ZPxt6jcgR1IuHbin3IzMCoQLK7myanau5vZqDzDwvjeFU7DQrQ>
 <xmx:HSt1ZKQANZZOBjMwQmPmOBaNIM47c5zunCcczG1Cdw-QKiQZ0jR4Bg>
 <xmx:HSt1ZCY6O-PfoQ75-5ClWhbZosX1DKUbFDzHmbV15U0mKSGlNLpUHQ>
 <xmx:Hit1ZFf-ufi8dc8V9C2O83rlKmoYQF55qonfSAP9RcCY6DuPNsVX-A>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 29 May 2023 18:45:48 -0400 (EDT)
Date: Tue, 30 May 2023 07:45:46 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Subject: Re: [PATCH][next] firewire: Replace zero-length array with
 flexible-array member
Message-ID: <20230529224546.GA8560@workstation.local>
Mail-Followup-To: "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 linux-hardening@vger.kernel.org
References: <ZHT0V3SpvHyxCv5W@work>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZHT0V3SpvHyxCv5W@work>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Mon, May 29, 2023 at 12:52:07PM -0600, Gustavo A. R.
 Silva wrote: > Zero-length and one-element arrays are deprecated, and we
 are moving > towards adopting C99 flexible-array members, instead. > > [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.28 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.28 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1q3lch-00031N-R3
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
Cc: linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

SGksCgpPbiBNb24sIE1heSAyOSwgMjAyMyBhdCAxMjo1MjowN1BNIC0wNjAwLCBHdXN0YXZvIEEu
IFIuIFNpbHZhIHdyb3RlOgo+IFplcm8tbGVuZ3RoIGFuZCBvbmUtZWxlbWVudCBhcnJheXMgYXJl
IGRlcHJlY2F0ZWQsIGFuZCB3ZSBhcmUgbW92aW5nCj4gdG93YXJkcyBhZG9wdGluZyBDOTkgZmxl
eGlibGUtYXJyYXkgbWVtYmVycywgaW5zdGVhZC4KPiAKPiBBZGRyZXNzIHRoZSBmb2xsb3dpbmcg
d2FybmluZ3MgZm91bmQgd2l0aCBHQ0MtMTMgYW5kCj4gLWZzdHJpY3QtZmxleC1hcnJheXM9MyBl
bmFibGVkOgo+IHNvdW5kL2ZpcmV3aXJlL2FtZHRwLXN0cmVhbS5jOiBJbiBmdW5jdGlvbiDigJhi
dWlsZF9pdF9wa3RfaGVhZGVy4oCZOgo+IHNvdW5kL2ZpcmV3aXJlL2FtZHRwLXN0cmVhbS5jOjY5
NDoxNzogd2FybmluZzog4oCYZ2VuZXJhdGVfY2lwX2hlYWRlcuKAmSBhY2Nlc3NpbmcgOCBieXRl
cyBpbiBhIHJlZ2lvbiBvZiBzaXplIDAgWy1Xc3RyaW5nb3Atb3ZlcmZsb3c9XQo+ICAgNjk0IHwg
ICAgICAgICAgICAgICAgIGdlbmVyYXRlX2NpcF9oZWFkZXIocywgY2lwX2hlYWRlciwgZGF0YV9i
bG9ja19jb3VudGVyLCBzeXQpOwo+ICAgICAgIHwgICAgICAgICAgICAgICAgIF5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+Cj4gc291bmQv
ZmlyZXdpcmUvYW1kdHAtc3RyZWFtLmM6Njk0OjE3OiBub3RlOiByZWZlcmVuY2luZyBhcmd1bWVu
dCAyIG9mIHR5cGUg4oCYX19iZTMyWzJd4oCZIHtha2Eg4oCYdW5zaWduZWQgaW50WzJd4oCZfQo+
IHNvdW5kL2ZpcmV3aXJlL2FtZHRwLXN0cmVhbS5jOjY2NzoxMzogbm90ZTogaW4gYSBjYWxsIHRv
IGZ1bmN0aW9uIOKAmGdlbmVyYXRlX2NpcF9oZWFkZXLigJkKPiAgIDY2NyB8IHN0YXRpYyB2b2lk
IGdlbmVyYXRlX2NpcF9oZWFkZXIoc3RydWN0IGFtZHRwX3N0cmVhbSAqcywgX19iZTMyIGNpcF9o
ZWFkZXJbMl0sCj4gICAgICAgfCAgICAgICAgICAgICBefn5+fn5+fn5+fn5+fn5+fn5+Cj4gCj4g
VGhpcyBoZWxwcyB3aXRoIHRoZSBvbmdvaW5nIGVmZm9ydHMgdG8gdGlnaHRlbiB0aGUgRk9SVElG
WV9TT1VSQ0UKPiByb3V0aW5lcyBvbiBtZW1jcHkoKSBhbmQgaGVscCB1cyBtYWtlIHByb2dyZXNz
IHRvd2FyZHMgZ2xvYmFsbHkKPiBlbmFibGluZyAtZnN0cmljdC1mbGV4LWFycmF5cz0zIFsxXS4K
PiAKPiBMaW5rOiBodHRwczovL2dpdGh1Yi5jb20vS1NQUC9saW51eC9pc3N1ZXMvMjEKPiBMaW5r
OiBodHRwczovL2dpdGh1Yi5jb20vS1NQUC9saW51eC9pc3N1ZXMvMzAzCj4gTGluazogaHR0cHM6
Ly9nY2MuZ251Lm9yZy9waXBlcm1haWwvZ2NjLXBhdGNoZXMvMjAyMi1PY3RvYmVyLzYwMjkwMi5o
dG1sIFsxXQo+IFNpZ25lZC1vZmYtYnk6IEd1c3Rhdm8gQS4gUi4gU2lsdmEgPGd1c3Rhdm9hcnNA
a2VybmVsLm9yZz4KPiAtLS0KPiAgaW5jbHVkZS9saW51eC9maXJld2lyZS5oIHwgMiArLQo+ICAx
IGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKClRoYW5rcyBmb3Ig
dGhlIHBhdGNoLiBJIGFwcGxpZWQgaXQgdG8gZm9yLWxpbnVzIGJyYW5jaCBhcyBhIGZpeCBmb3IK
djYuNC1yYzQsIGluc3RlYWQgb2YgZm9yLW5leHQgYnJhbmNoLgoKKiBodHRwczovL2dpdC5rZXJu
ZWwub3JnL2llZWUxMzk0L2xpbnV4MTM5NC9jLzQxZGQxMGEwODZjNQoKClRoYW5rcwoKVGFrYXNo
aSBTYWthbW90bwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCm1haWxpbmcgbGlzdCBsaW51eDEzOTQtZGV2ZWxAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0
dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2xpbnV4MTM5NC1kZXZl
bAo=
