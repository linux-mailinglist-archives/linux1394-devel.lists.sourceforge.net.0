Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EB4BAE1BBA
	for <lists+linux1394-devel@lfdr.de>; Fri, 20 Jun 2025 15:13:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HMi8rq0oVsftrdBYaVDC0HfmJ0t1RGIedEoOLt5LsRw=; b=BaReRSfI8V4uXPq41Ww2tAnHH7
	ksEFhrcnQLScQekgRoJB9Dx84q5RowQF/6BK+qOqQeY5+98R4ke44BD7udoxijUeqJgHKP//yIfne
	HWoYHpGU1EJCealCxEKR5mVl4PQoa+QME18KyVJzFmZ52uRpDykDcbCTGf83VziGfh78=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uSbYE-0006ep-JX;
	Fri, 20 Jun 2025 13:13:02 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uSbYC-0006eY-O5
 for linux1394-devel@lists.sourceforge.net;
 Fri, 20 Jun 2025 13:13:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gWeoSN3eJ+DApZgRVEA1ZKsG1P7uPpmU9Midv9EXnQo=; b=N0RvbzKhDJ3wY/mIhV6Po7FN7L
 w1U57W+N7A8DA60a5BVwpGUpaE7VTbbyocxf7q9dwnriE7k6Rr/lUni7VZ5KdQU3SRimiRfyjlAJO
 hZHBg9r85R0aYmTYmXi4AXvN6DOdlyGUBfx8pIlq6sldr429cwzAlySXq3jufLWOPLN4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gWeoSN3eJ+DApZgRVEA1ZKsG1P7uPpmU9Midv9EXnQo=; b=AkkOCIpPy21t8E1VhFBGhAtwCy
 wFYjqwWq5ClpWHKyehI0bPYFfvAMc8cc2fquvaaexVG1oo/TlSYBfvXmSty99ngEyVjYaCR/2N8DI
 oVti4+iTiY+oFyCWIMe2n/Fyzejd+PcYttL9ItXNcZSYCVVHKXrcIiCq8CgJSWjupIOM=;
Received: from fhigh-b2-smtp.messagingengine.com ([202.12.124.153])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uSbYB-0003ef-I3 for linux1394-devel@lists.sourceforge.net;
 Fri, 20 Jun 2025 13:13:00 +0000
Received: from phl-compute-11.internal (phl-compute-11.phl.internal
 [10.202.2.51])
 by mailfhigh.stl.internal (Postfix) with ESMTP id DF7A62540222;
 Fri, 20 Jun 2025 09:12:53 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-11.internal (MEProxy); Fri, 20 Jun 2025 09:12:53 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:content-type
 :date:date:from:from:in-reply-to:in-reply-to:message-id
 :mime-version:references:reply-to:subject:subject:to:to; s=fm1;
 t=1750425173; x=1750511573; bh=gWeoSN3eJ+DApZgRVEA1ZKsG1P7uPpmU
 9Midv9EXnQo=; b=P9e/lpfj9W+Y+YFWbUDdZyLmPmBbrJqjNo+/6bNFz9ocr66J
 MvXDEedh5ony8Rc8XTtTCfIu5btaUMLXi01oj1NAoHGY3HQsuMH8CkGU9UWWiPvC
 dMseqY9E+8ZAeBHHSFVKnxG3AcjQYR4zFGLvnwrkozREECoafSsSTnZtlUKpC/Mb
 ZwZOii+0VMhJM7ar6pCDS7sEH99n2G66iEtukSHp6G/FmCQol/TciGm7AVPEAnO9
 9Tkp4wx8VToOXTemEasiWp3oGDlTGSuXhlMLLtTmc5GaIJ9ntbxBeWuQUh2jPDxt
 bR0RqyhcipMEhJK0/WsCi5CPO4KgJy7WGEKR1A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1750425173; x=
 1750511573; bh=gWeoSN3eJ+DApZgRVEA1ZKsG1P7uPpmU9Midv9EXnQo=; b=Q
 Ou35oIQqEnyLaO2kgJo/TNMxoPzWWmd/Rv+1fpQWDo6fffLcEr7vsRz/AwsSjJLt
 rGdhU7gYmX7PRSSwS0UZwiOsgaiQMVZQFpXm96LQ0oVrHzUoIlg7kSBvfntiLUbW
 WKyrITpu3noabDEp0JbCSu/z3qzHVNODsn0Mf4VijPq9Zf6OtnkC3nhsWAjAkZ3C
 ASs/fSb4EXg+Duh3YK18w+516olCVwym2Sb6tYATll6pedk0K9DIsjD7BjN+8lXY
 BAA9WoXHMQ9A38m+eDoNk7WbBcK3h+DSJDPaGUtVdmASBYXSSOQ9MoOgBX5PT+2G
 g7WL4FBKJtl9JJvt3NLxA==
X-ME-Sender: <xms:VF5VaBq4zuyBhGqiYMlp8wRjfmkpHregcSr9pRx2ME_hW2BRkooRnw>
 <xme:VF5VaDrbWRke5Uc7CX9AnihmhxFIHFYZKJQHYI9pdbovFji8TpIRtdMDJYM7l3GWD
 Cbgg9XG1dYCsAbcRVk>
X-ME-Received: <xmr:VF5VaOPLEOMUfURobb93lbD7-3-TgOPObbHXV8oLqhzl6NFdZNSoShKUNH39A-HsNhANx8zqPZRWq3Dphof1TR0_62FlMkev8Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtddvgdekgeelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
 epfffhvfevuffkfhggtggugfgjsehtkeertddttdejnecuhfhrohhmpefvrghkrghshhhi
 ucfurghkrghmohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhpqe
 enucggtffrrghtthgvrhhnpeehieffffeffedtjedtjefhvdevveegtdeuleettedtueel
 ffeugfehfffhkeejtdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrih
 hlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgt
 phhtthhopedvpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehjfihoihhthhgvse
 hjuhhsthegvddrnhgvthdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlsehl
 ihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvght
X-ME-Proxy: <xmx:VF5VaM4tfNkfYWSh12msqzIESIH3NnZNHAWicKrL5y4yah30BYTViA>
 <xmx:VF5VaA5ZMkWgfT3HqmO2GBoz-AR2bbFrbIjcSvPG9EMCype-B1tgvg>
 <xmx:VF5VaEgbQXAVcgORXP9nFrtDoWobvT1KllYa3mInVo1OP1JiusUidA>
 <xmx:VF5VaC7fOFPlnGD9gzf6qd1kBTVuIQ6pYoPCKiwGMn7AheaL0mLbTg>
 <xmx:VV5VaPQ_mHNpJ72r1Gx_QH2Bo_QBfXG7YwdWpdR5tXGrg29vL4JeZrs5>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 20 Jun 2025 09:12:51 -0400 (EDT)
Date: Fri, 20 Jun 2025 22:12:49 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Jonathan Woithe <jwoithe@just42.net>
Subject: Re: Possible regression with the FW643 chipset
Message-ID: <20250620131249.GA5617@workstation.local>
Mail-Followup-To: Jonathan Woithe <jwoithe@just42.net>,
 linux1394-devel@lists.sourceforge.net
References: <aFSbwoRkxkISumSk@marvin.atrad.com.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aFSbwoRkxkISumSk@marvin.atrad.com.au>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Fri, Jun 20, 2025 at 08:52:42AM +0930, Jonathan Woithe
 wrote: > Alternatively, are there any FW643 users who have no problem with
 device > detection under a 6.12.x (or later) kernel? If so this wou [...]
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
X-Headers-End: 1uSbYB-0003ef-I3
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

SGksCgpPbiBGcmksIEp1biAyMCwgMjAyNSBhdCAwODo1Mjo0MkFNICswOTMwLCBKb25hdGhhbiBX
b2l0aGUgd3JvdGU6Cj4gQWx0ZXJuYXRpdmVseSwgYXJlIHRoZXJlIGFueSBGVzY0MyB1c2VycyB3
aG8gaGF2ZSBubyBwcm9ibGVtIHdpdGggZGV2aWNlCj4gZGV0ZWN0aW9uIHVuZGVyIGEgNi4xMi54
IChvciBsYXRlcikga2VybmVsPyAgSWYgc28gdGhpcyB3b3VsZCBjb25jbHVzaXZlbHkKPiBydWxl
IG91dCBhIGtlcm5lbCBpc3N1ZS4KCkkgY2FuIG5vdCByZWdlbmVyYXRlIHRoZSBpc3N1ZSB3aXRo
IHRoZSBrZXJuZWwgbW9kdWxlcyBwcm92aWRlZCBieSB0aGUKc3RvY2sga2VybmVsIGluIFVidW50
dSAyNS4wNCBhbWQ2NCAodjYuMTQpLiBUaGUgbWFjaGluZSBjb25zaXN0cyBvZgoKKiBBU1VTVGVL
IENPTVBVVEVSIElOQy4gVFVGIEdBTUlORyBYNTcwLVBMVVMKKiBBTUQgUnl6ZW7ihKIgNyA1NzAw
RyB3aXRoIFJhZGVvbuKEoiBHcmFwaGljcyDDlyAxNgoKCmBgYAokIGRwa2cgLVMgL2xpYi9tb2R1
bGVzLzYuMTQuMC0xNS1nZW5lcmljL2tlcm5lbC9kcml2ZXJzL2ZpcmV3aXJlLyoKbGludXgtbW9k
dWxlcy1leHRyYS02LjE0LjAtMTUtZ2VuZXJpYzogL2xpYi9tb2R1bGVzLzYuMTQuMC0xNS1nZW5l
cmljL2tlcm5lbC9kcml2ZXJzL2ZpcmV3aXJlL2ZpcmV3aXJlLWNvcmUua28uenN0CmxpbnV4LW1v
ZHVsZXMtZXh0cmEtNi4xNC4wLTE1LWdlbmVyaWM6IC9saWIvbW9kdWxlcy82LjE0LjAtMTUtZ2Vu
ZXJpYy9rZXJuZWwvZHJpdmVycy9maXJld2lyZS9maXJld2lyZS1uZXQua28uenN0CmxpbnV4LW1v
ZHVsZXMtZXh0cmEtNi4xNC4wLTE1LWdlbmVyaWM6IC9saWIvbW9kdWxlcy82LjE0LjAtMTUtZ2Vu
ZXJpYy9rZXJuZWwvZHJpdmVycy9maXJld2lyZS9maXJld2lyZS1vaGNpLmtvLnpzdApsaW51eC1t
b2R1bGVzLWV4dHJhLTYuMTQuMC0xNS1nZW5lcmljOiAvbGliL21vZHVsZXMvNi4xNC4wLTE1LWdl
bmVyaWMva2VybmVsL2RyaXZlcnMvZmlyZXdpcmUvZmlyZXdpcmUtc2JwMi5rby56c3QKbGludXgt
bW9kdWxlcy1leHRyYS02LjE0LjAtMTUtZ2VuZXJpYzogL2xpYi9tb2R1bGVzLzYuMTQuMC0xNS1n
ZW5lcmljL2tlcm5lbC9kcml2ZXJzL2ZpcmV3aXJlL25vc3kua28uenN0CgokIHN1ZG8gbHNwY2kg
LXZ2bm4KMDY6MDAuMCBGaXJlV2lyZSAoSUVFRSAxMzk0KSBbMGMwMF06IExTSSBDb3Jwb3JhdGlv
biBGVzY0MyBbVHJ1ZUZpcmVdIFBDSWUgMTM5NGIgQ29udHJvbGxlciBbMTFjMTo1OTAxXSAocmV2
IDA2KSAocHJvZy1pZiAxMCBbT0hDSV0pCiAgICAgICAgU3Vic3lzdGVtOiBMU0kgQ29ycG9yYXRp
b24gRlc2NDMgW1RydWVGaXJlXSBQQ0llIDEzOTRiIENvbnRyb2xsZXIgWzExYzE6NTkwMF0KICAg
ICAgICBDb250cm9sOiBJL08tIE1lbSsgQnVzTWFzdGVyKyBTcGVjQ3ljbGUtIE1lbVdJTlYtIFZH
QVNub29wLSBQYXJFcnItIFN0ZXBwaW5nLSBTRVJSLSBGYXN0QjJCLSBEaXNJTlR4LQogICAgICAg
IFN0YXR1czogQ2FwKyA2Nk1Iei0gVURGLSBGYXN0QjJCLSBQYXJFcnItIERFVlNFTD1mYXN0ID5U
QWJvcnQtIDxUQWJvcnQtIDxNQWJvcnQtID5TRVJSLSA8UEVSUi0gSU5UeC0KICAgICAgICBMYXRl
bmN5OiAwLCBDYWNoZSBMaW5lIFNpemU6IDY0IGJ5dGVzCiAgICAgICAgSW50ZXJydXB0OiBwaW4g
QSByb3V0ZWQgdG8gSVJRIDQwCiAgICAgICAgSU9NTVUgZ3JvdXA6IDIwCiAgICAgICAgUmVnaW9u
IDA6IE1lbW9yeSBhdCBmYzYwMDAwMCAoNjQtYml0LCBub24tcHJlZmV0Y2hhYmxlKSBbc2l6ZT00
S10KICAgICAgICBDYXBhYmlsaXRpZXM6IFs0NF0gUG93ZXIgTWFuYWdlbWVudCB2ZXJzaW9uIDMK
ICAgICAgICAgICAgICAgIEZsYWdzOiBQTUVDbGstIERTSS0gRDErIEQyKyBBdXhDdXJyZW50PTM3
NW1BIFBNRShEMCssRDErLEQyKyxEM2hvdCssRDNjb2xkKykKICAgICAgICAgICAgICAgIFN0YXR1
czogRDAgTm9Tb2Z0UnN0LSBQTUUtRW5hYmxlLSBEU2VsPTAgRFNjYWxlPTAgUE1FKwogICAgICAg
IENhcGFiaWxpdGllczogWzRjXSBNU0k6IEVuYWJsZS0gQ291bnQ9MS8xIE1hc2thYmxlLSA2NGJp
dCsKICAgICAgICAgICAgICAgIEFkZHJlc3M6IDAwMDAwMDAwMDAwMDAwMDAgIERhdGE6IDAwMDAK
ICAgICAgICBDYXBhYmlsaXRpZXM6IFs2MF0gRXhwcmVzcyAodjEpIEVuZHBvaW50LCBJbnRNc2dO
dW0gMAogICAgICAgICAgICAgICAgRGV2Q2FwOiBNYXhQYXlsb2FkIDI1NiBieXRlcywgUGhhbnRG
dW5jIDAsIExhdGVuY3kgTDBzIDw0dXMsIEwxIDw2NHVzCiAgICAgICAgICAgICAgICAgICAgICAg
IEV4dFRhZy0gQXR0bkJ0bi0gQXR0bkluZC0gUHdySW5kLSBSQkUrIEZMUmVzZXQtIFNsb3RQb3dl
ckxpbWl0IDBXIFRFRS1JTy0KICAgICAgICAgICAgICAgIERldkN0bDogQ29yckVycisgTm9uRmF0
YWxFcnIrIEZhdGFsRXJyKyBVbnN1cFJlcSsKICAgICAgICAgICAgICAgICAgICAgICAgUmx4ZE9y
ZCsgRXh0VGFnLSBQaGFudEZ1bmMtIEF1eFB3ci0gTm9Tbm9vcC0KICAgICAgICAgICAgICAgICAg
ICAgICAgTWF4UGF5bG9hZCAxMjggYnl0ZXMsIE1heFJlYWRSZXEgNTEyIGJ5dGVzCiAgICAgICAg
ICAgICAgICBEZXZTdGE6IENvcnJFcnItIE5vbkZhdGFsRXJyLSBGYXRhbEVyci0gVW5zdXBSZXEt
IEF1eFB3cisgVHJhbnNQZW5kLQogICAgICAgICAgICAgICAgTG5rQ2FwOiBQb3J0ICMwLCBTcGVl
ZCAyLjVHVC9zLCBXaWR0aCB4MSwgQVNQTSBMMHMgTDEsIEV4aXQgTGF0ZW5jeSBMMHMgPDUxMm5z
LCBMMSA8NjR1cwogICAgICAgICAgICAgICAgICAgICAgICBDbG9ja1BNKyBTdXJwcmlzZS0gTExB
Y3RSZXAtIEJ3Tm90LSBBU1BNT3B0Q29tcC0KICAgICAgICAgICAgICAgIExua0N0bDogQVNQTSBE
aXNhYmxlZDsgUkNCIDY0IGJ5dGVzLCBMbmtEaXNhYmxlLSBDb21tQ2xrKwogICAgICAgICAgICAg
ICAgICAgICAgICBFeHRTeW5jaC0gQ2xvY2tQTS0gQXV0V2lkRGlzLSBCV0ludC0gQXV0QldJbnQt
CiAgICAgICAgICAgICAgICBMbmtTdGE6IFNwZWVkIDIuNUdUL3MsIFdpZHRoIHgxCiAgICAgICAg
ICAgICAgICAgICAgICAgIFRyRXJyLSBUcmFpbi0gU2xvdENsaysgRExBY3RpdmUtIEJXTWdtdC0g
QUJXTWdtdC0KICAgICAgICBDYXBhYmlsaXRpZXM6IFsxMDAgdjFdIEFkdmFuY2VkIEVycm9yIFJl
cG9ydGluZwogICAgICAgICAgICAgICAgVUVTdGE6ICBETFAtIFNERVMtIFRMUC0gRkNQLSBDbXBs
dFRPLSBDbXBsdEFicnQtIFVueENtcGx0LSBSeE9GLSBNYWxmVExQLQogICAgICAgICAgICAgICAg
ICAgICAgICBFQ1JDLSBVbnN1cFJlcS0gQUNTVmlvbC0gVW5jb3JySW50RXJyLSBCbG9ja2VkVExQ
LSBBdG9taWNPcEJsb2NrZWQtIFRMUEJsb2NrZWRFcnItCiAgICAgICAgICAgICAgICAgICAgICAg
IFBvaXNvblRMUEJsb2NrZWQtIERNV3JSZXFCbG9ja2VkLSBJREVDaGVjay0gTWlzSURFVExQLSBQ
Q1JDX0NIRUNLLSBUTFBYbGF0QmxvY2tlZC0KICAgICAgICAgICAgICAgIFVFTXNrOiAgRExQLSBT
REVTLSBUTFAtIEZDUC0gQ21wbHRUTy0gQ21wbHRBYnJ0LSBVbnhDbXBsdC0gUnhPRi0gTWFsZlRM
UC0KICAgICAgICAgICAgICAgICAgICAgICAgRUNSQy0gVW5zdXBSZXEtIEFDU1Zpb2wtIFVuY29y
ckludEVyci0gQmxvY2tlZFRMUC0gQXRvbWljT3BCbG9ja2VkLSBUTFBCbG9ja2VkRXJyLQogICAg
ICAgICAgICAgICAgICAgICAgICBQb2lzb25UTFBCbG9ja2VkLSBETVdyUmVxQmxvY2tlZC0gSURF
Q2hlY2stIE1pc0lERVRMUC0gUENSQ19DSEVDSy0gVExQWGxhdEJsb2NrZWQtCiAgICAgICAgICAg
ICAgICBVRVN2cnQ6IERMUCsgU0RFUysgVExQLSBGQ1ArIENtcGx0VE8tIENtcGx0QWJydC0gVW54
Q21wbHQtIFJ4T0YrIE1hbGZUTFArCiAgICAgICAgICAgICAgICAgICAgICAgIEVDUkMtIFVuc3Vw
UmVxLSBBQ1NWaW9sLSBVbmNvcnJJbnRFcnItIEJsb2NrZWRUTFAtIEF0b21pY09wQmxvY2tlZC0g
VExQQmxvY2tlZEVyci0KICAgICAgICAgICAgICAgICAgICAgICAgUG9pc29uVExQQmxvY2tlZC0g
RE1XclJlcUJsb2NrZWQtIElERUNoZWNrLSBNaXNJREVUTFAtIFBDUkNfQ0hFQ0stIFRMUFhsYXRC
bG9ja2VkLQogICAgICAgICAgICAgICAgQ0VTdGE6ICBSeEVyci0gQmFkVExQLSBCYWRETExQLSBS
b2xsb3Zlci0gVGltZW91dC0gQWR2Tm9uRmF0YWxFcnItIENvcnJJbnRFcnItIEhlYWRlck9GLQog
ICAgICAgICAgICAgICAgQ0VNc2s6ICBSeEVyci0gQmFkVExQLSBCYWRETExQLSBSb2xsb3Zlci0g
VGltZW91dC0gQWR2Tm9uRmF0YWxFcnIrIENvcnJJbnRFcnItIEhlYWRlck9GLQogICAgICAgICAg
ICAgICAgQUVSQ2FwOiBGaXJzdCBFcnJvciBQb2ludGVyOiAwMCwgRUNSQ0dlbkNhcCsgRUNSQ0dl
bkVuLSBFQ1JDQ2hrQ2FwKyBFQ1JDQ2hrRW4tCiAgICAgICAgICAgICAgICAgICAgICAgIE11bHRI
ZHJSZWNDYXAtIE11bHRIZHJSZWNFbi0gVExQUGZ4UHJlcy0gSGRyTG9nQ2FwLQogICAgICAgICAg
ICAgICAgSGVhZGVyTG9nOiAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMAogICAg
ICAgIENhcGFiaWxpdGllczogWzE0MCB2MV0gVmlydHVhbCBDaGFubmVsCiAgICAgICAgICAgICAg
ICBDYXBzOiAgIExQRVZDPTAgUmVmQ2xrPTEwMG5zIFBBVEVudHJ5Qml0cz0xCiAgICAgICAgICAg
ICAgICBBcmI6ICAgIEZpeGVkLSBXUlIzMi0gV1JSNjQtIFdSUjEyOC0KICAgICAgICAgICAgICAg
IEN0cmw6ICAgQXJiU2VsZWN0PUZpeGVkCiAgICAgICAgICAgICAgICBTdGF0dXM6IEluUHJvZ3Jl
c3MtCiAgICAgICAgICAgICAgICBWQzA6ICAgIENhcHM6ICAgUEFUT2Zmc2V0PTAwIE1heFRpbWVT
bG90cz0xIFJlalNub29wVHJhbnMtCiAgICAgICAgICAgICAgICAgICAgICAgIEFyYjogICAgRml4
ZWQtIFdSUjMyLSBXUlI2NC0gV1JSMTI4LSBUV1JSMTI4LSBXUlIyNTYtCiAgICAgICAgICAgICAg
ICAgICAgICAgIEN0cmw6ICAgRW5hYmxlKyBJRD0wIEFyYlNlbGVjdD1GaXhlZCBUQy9WQz0wMQog
ICAgICAgICAgICAgICAgICAgICAgICBTdGF0dXM6IE5lZ29QZW5kaW5nLSBJblByb2dyZXNzLQog
ICAgICAgICAgICAgICAgVkMxOiAgICBDYXBzOiAgIFBBVE9mZnNldD0wMCBNYXhUaW1lU2xvdHM9
MSBSZWpTbm9vcFRyYW5zLQogICAgICAgICAgICAgICAgICAgICAgICBBcmI6ICAgIEZpeGVkLSBX
UlIzMi0gV1JSNjQtIFdSUjEyOC0gVFdSUjEyOC0gV1JSMjU2LQogICAgICAgICAgICAgICAgICAg
ICAgICBDdHJsOiAgIEVuYWJsZS0gSUQ9MSBBcmJTZWxlY3Q9Rml4ZWQgVEMvVkM9MDAKICAgICAg
ICAgICAgICAgICAgICAgICAgU3RhdHVzOiBOZWdvUGVuZGluZy0gSW5Qcm9ncmVzcy0KICAgICAg
ICBDYXBhYmlsaXRpZXM6IFsxNzAgdjFdIERldmljZSBTZXJpYWwgTnVtYmVyIDEyLTM0LTU2LTEw
LTEyLTMwLTAwLTg2CiAgICAgICAgS2VybmVsIGRyaXZlciBpbiB1c2U6IGZpcmV3aXJlX29oY2kK
ICAgICAgICBLZXJuZWwgbW9kdWxlczogZmlyZXdpcmVfb2hjaQoKYGBgCgpNeSBQaG9uaWMgRmly
ZUZseSA4MDggVW5pdmVyc2FsIGlzIGRldGVjdGVkIHN1Y2Nlc3NmdWxseSBldmVuIGFmdGVyIHRo
ZQpyZXBvcnRlZCBzdGVwcy4KCgpUaGFua3MKClRha2FzaGkgU2FrYW1vdG8KCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwptYWlsaW5nIGxpc3QgbGludXgx
Mzk0LWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdl
Lm5ldC9saXN0cy9saXN0aW5mby9saW51eDEzOTQtZGV2ZWwK
